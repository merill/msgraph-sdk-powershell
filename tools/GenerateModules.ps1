# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License.
Param(
    $ModulesToGenerate = @(),
    [string] $RepositoryApiKey,
    [string] $RepositoryName = "PSGallery",
    [int] $ModulePreviewNumber = -1,
    [string] $ModuleMappingConfigPath = (Join-Path $PSScriptRoot "..\config\ModulesMapping.jsonc"),
    [switch] $UpdateAutoRest,
    [switch] $Build,
    [switch] $Test,
    [switch] $Pack,
    [switch] $Publish,
    [switch] $EnableSigning,
    [switch] $SkipVersionCheck,
    [switch] $ExcludeExampleTemplates,
    [switch] $ExcludeNotesSection,
    [switch] $Isolated
)
enum VersionState {
    Invalid
    Valid
    EqualToFeed
    NotOnFeed
}
$Error.Clear()
$ErrorActionPreference = 'Stop'

if ($PSEdition -ne 'Core') {
    Write-Error 'This script requires PowerShell Core to execute. [Note] Generated cmdlets will work in both PowerShell Core or Windows PowerShell.'
}

if (-not $Isolated) {
    Write-Host -ForegroundColor Green 'Creating isolated process...'
    $pwsh = [System.Diagnostics.Process]::GetCurrentProcess().Path
    & "$pwsh" -NonInteractive -NoLogo -NoProfile -File $MyInvocation.MyCommand.Path @PSBoundParameters -Isolated
    return
}

# Module import.
Import-Module PowerShellGet

# Install Powershell-yaml
if (!(Get-Module -Name powershell-yaml -ListAvailable)) {
    Install-Module powershell-yaml -Repository PSGallery -Scope CurrentUser -Force
}

# Set NODE max memory to 8 Gb.
$ENV:NODE_OPTIONS='--max-old-space-size=8192'
$ModulePrefix = "Microsoft.Graph"
$ScriptRoot = $PSScriptRoot
$ModulesOutputDir = Join-Path $ScriptRoot "..\src\"
$ArtifactsLocation = Join-Path $ScriptRoot "..\artifacts"
$OpenApiPath = Join-Path $ScriptRoot "..\openApiDocs"
$RequiredGraphModules = @()
# PS Scripts
$ManageGeneratedModulePS1 = Join-Path $PSScriptRoot ".\ManageGeneratedModule.ps1" -Resolve
$BuildModulePS1 = Join-Path $PSScriptRoot ".\BuildModule.ps1" -Resolve
$TestModulePS1 = Join-Path $PSScriptRoot ".\TestModule.ps1" -Resolve
$PackModulePS1 = Join-Path $PSScriptRoot ".\PackModule.ps1" -Resolve
$PublishModulePS1 = Join-Path $PSScriptRoot ".\PublishModule.ps1" -Resolve
$ReadModuleReadMePS1 = Join-Path $PSScriptRoot ".\ReadModuleReadMe.ps1" -Resolve
$ValidateUpdatedModuleVersionPS1 = Join-Path $PSScriptRoot ".\ValidateUpdatedModuleVersion.ps1" -Resolve
$CleanUpPsm1 = Join-Path $PSScriptRoot "\PostGeneration\CleanUpPsm1.ps1" -Resolve

if (-not (Test-Path $ArtifactsLocation)) {
    New-Item -Path $ArtifactsLocation -Type Directory
}

if (-not (Test-Path $ModuleMappingConfigPath)) {
    Write-Error "Module mapping file not be found: $ModuleMappingConfigPath."
}

$AllowPreRelease = $true
if ($ModulePreviewNumber -eq -1) {
    $AllowPreRelease = $false
}
# Install module locally in order to specify it as a dependency for other modules down the generation pipeline.
# https://stackoverflow.com/questions/46216038/how-do-i-define-requiredmodules-in-a-powershell-module-manifest-psd1.
$ExistingAuthModule = Find-Module "Microsoft.Graph.Authentication" -Repository $RepositoryName -AllowPrerelease:$AllowPreRelease
Write-Host -ForegroundColor Green "Auth Module: $($ExistingAuthModule.Name), $($ExistingAuthModule.Version)"
if (!(Get-Module -Name $ExistingAuthModule.Name -ListAvailable)) {
    Install-Module $ExistingAuthModule.Name -Repository $RepositoryName -Force -AllowClobber -AllowPrerelease:$AllowPreRelease
}
if ($ExistingAuthModule.Version -like '*preview*' ) {
    $version = $ExistingAuthModule.Version.Remove($ExistingAuthModule.Version.IndexOf('-'))
    Write-Warning "Required Version:  $ModulePrefix.$RequiredModule Version: $version"
    $RequiredGraphModules += @{ ModuleName = $ExistingAuthModule.Name ; ModuleVersion = $version }
}
else {
    $RequiredGraphModules += @{ ModuleName = $ExistingAuthModule.Name ; ModuleVersion = $ExistingAuthModule.Version }
}

if ($UpdateAutoRest) {
    # Update AutoRest.
    & autorest --reset
}

if ($ModulesToGenerate.Count -eq 0) {
    [HashTable] $ModuleMapping = Get-Content $ModuleMappingConfigPath | ConvertFrom-Json -AsHashTable
    $ModulesToGenerate = $ModuleMapping.Keys
}

# $NumberOfCores = ((Get-ComputerInfo -Property CsProcessors).CsProcessors.NumberOfCores)[0]
# Write-Host -ForegroundColor Green "Using '$NumberOfCores' cores in parallel."

$ModulesToGenerate = "Search"
$Stopwatch = [system.diagnostics.stopwatch]::StartNew()
$ModulesToGenerate | ForEach-Object {
    enum VersionState {
        Invalid
        Valid
        EqualToFeed
        NotOnFeed
    }

    $ModuleName = $_

    @("beta") | ForEach-Object {
        $ApiVersion = $_
        $ModuleProjectPath = Join-Path $ModulesOutputDir "$ModuleName\$ApiVersion"
        $ModuleOpenApiPath = Join-Path $OpenApiPath $ApiVersion "$ModuleName.yml"
        if (!(Test-Path $ModuleOpenApiPath)) { break }

        $ModuleFullName = ($ApiVersion -eq "beta" ? "$ModuleName.Beta" : $ModuleName)
        $FullyQualifiedModuleName = "$ModulePrefix.$ModuleFullName"
        Write-Host -ForegroundColor Green "Generating '$FullyQualifiedModuleName' module..."
        $ModuleLevelReadMePath = Join-Path $ModuleProjectPath "\readme.md" -Resolve

        # Copy AutoRest readme.md config if not found.
        if (-not (Test-Path "$ModuleProjectPath\readme.md")) {
            New-Item -Path $ModuleProjectPath -Type Directory -Force
            Copy-Item (Join-Path $ScriptRoot "\Templates\readme.md") -Destination $ModuleProjectPath
        }

        # Read specified module version from readme.
        $ModuleVersion = & $ReadModuleReadMePS1 -ReadMePath $ModuleLevelReadMePath -FieldToRead "module-version"
        if ($ModuleVersion -eq $null) {
            # Module version not set in readme.md.
            Write-Error "Version number is not set on $FullyQualifiedModuleName module. Please set 'module-version' in $ModuleLevelReadMePath."
        }

        # Validate module version with the one on PSGallery.
        [VersionState] $VersionState = & $ValidateUpdatedModuleVersionPS1 -ModuleName "$FullyQualifiedModuleName" -NextVersion $ModuleVersion -PSRepository RepositoryName -ModulePreviewNumber $ModulePreviewNumber

        if ($VersionState.Equals([VersionState]::Invalid) -and !$SkipVersionCheck) {
            Write-Warning "The specified version in $FullyQualifiedModuleName module is either higher or lower than what's on $RepositoryName. Update the 'module-version' in $ModuleLevelReadMePath"
        }
        elseif ($VersionState.Equals([VersionState]::EqualToFeed) -and !$SkipVersionCheck) {
            Write-Warning "$FullyQualifiedModuleName module skipped. Version has not changed and is equal to what's on $RepositoryName."
        }
        elseif ($VersionState.Equals([VersionState]::Valid) -or $VersionState.Equals([VersionState]::NotOnFeed) -or $SkipVersionCheck) {
            # Read release notes from readme.
            $ModuleReleaseNotes = & $ReadModuleReadMePS1 -ReadMePath (Join-Path $ModulesOutputDir "$ModuleName\$ModuleName.md") -FieldToRead "release-notes"
            if ($ModuleReleaseNotes -eq $null) {
                # Release notes not set in readme.md.
                Write-Error "Release notes not set on $FullyQualifiedModuleName module. Please set 'release-notes' in $ModuleLevelReadMePath."
            }

            try {
                # Generate PowerShell modules.
                & autorest --module-version:$ModuleVersion --service-name:$ModuleFullName --input-file:$ModuleOpenApiPath $ModuleLevelReadMePath
                if ($LASTEXITCODE) {
                    Write-Error "AutoREST failed to generate '$ModuleFullName' module."
                    break;
                }
                Write-Host -ForegroundColor Green "AutoRest generated '$FullyQualifiedModuleName' successfully."

                # Manage generated module.
                Write-Host -ForegroundColor Green "Managing '$FullyQualifiedModuleName' module..."
                & $ManageGeneratedModulePS1 -ModuleName $FullyQualifiedModuleName -ModuleSrc $ModuleProjectPath -ApiVersion $ApiVersion

                if ($Build) {
                    # Build generated module.
                    if ($EnableSigning) {
                        # Sign generated module.
                        & $BuildModulePS1 -ModuleFullName $FullyQualifiedModuleName -ModuleSrc $ModuleProjectPath -ModuleVersion $ModuleVersion -ModulePreviewNumber $ModulePreviewNumber -RequiredModules $RequiredGraphModules -ReleaseNotes $ModuleReleaseNotes -EnableSigning -ExcludeExampleTemplates:$ExcludeExampleTemplates -ExcludeNotesSection:$ExcludeNotesSection
                    }
                    else {
                        & $BuildModulePS1 -ModuleFullName $FullyQualifiedModuleName -ModuleSrc $ModuleProjectPath -ModuleVersion $ModuleVersion -ModulePreviewNumber $ModulePreviewNumber -RequiredModules $RequiredGraphModules -ReleaseNotes $ModuleReleaseNotes -ExcludeExampleTemplates:$ExcludeExampleTemplates -ExcludeNotesSection:$ExcludeNotesSection
                    }

                    & $CleanUpPsm1 -ModuleProjectPath $ModuleProjectPath -FullyQualifiedModuleName $FullyQualifiedModuleName
                }

                if ($Test) {
                    & $TestModulePS1 -ModulePath $ModuleProjectPath -ModuleName $FullyQualifiedModuleName -ModuleTestsPath (Join-Path $ModuleProjectPath "test")
                }

                if ($Pack) {
                    # Pack generated module.
                    . $PackModulePS1 -Module $ModuleName -ArtifactsLocation $ArtifactsLocation -ExcludeMarkdownDocsFromNugetPackage
                }

                Write-Host -ForeGroundColor Green "Generating $ModuleName Completed"
            }
            catch {
                Write-Error $_
            }
        }
    }
}
$stopwatch.Stop()

if ($Error.Count -ge 1) {
    # Write generation errors to pipeline.
    $Error
    Write-Error "The SDK failed to build due to $($Error.Count) errors listed above in '$($Stopwatch.Elapsed.TotalMinutes)` minutes." -ErrorAction "Stop"
}
Write-Host -ForegroundColor Green "Generated SDK in '$($Stopwatch.Elapsed.TotalMinutes)` minutes."

if ($Publish) {
    # Publish generated modules.
    & $PublishModulePS1 -Modules $ModuleMapping.Keys -ModulePrefix $ModulePrefix -ArtifactsLocation $ArtifactsLocation -RepositoryName $RepositoryName -RepositoryApiKey $RepositoryApiKey
}

Write-Host -ForegroundColor Green "-------------Done-------------"