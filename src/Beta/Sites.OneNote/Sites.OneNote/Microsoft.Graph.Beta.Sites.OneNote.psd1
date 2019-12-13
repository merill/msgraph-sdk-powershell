#
# Module manifest for module 'Microsoft.Graph.Beta.Sites.OneNote'
#
# Generated by: Microsoft
#
# Generated on: 11/25/2019
#

@{

# Script module or binary module file associated with this manifest.
RootModule = './Microsoft.Graph.Beta.Sites.OneNote.psm1'

# Version number of this module.
ModuleVersion = '0.1.3'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = '0925f028-cfca-43bc-8a00-6dcf5e4ed194'

# Author of this module
Author = 'Microsoft'

# Company or vendor of this module
CompanyName = 'Microsoft'

# Copyright statement for this module
Copyright = '© Microsoft Corporation. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Microsoft Graph PowerShell module'

# Minimum version of the PowerShell engine required by this module
PowerShellVersion = '5.1'

# Name of the PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
DotNetFrameworkVersion = '4.7.2'

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @('Microsoft.Graph.Authentication')

# Assemblies that must be loaded prior to importing this module
RequiredAssemblies = './bin/Microsoft.Graph.Beta.Sites.OneNote.private.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = './Microsoft.Graph.Beta.Sites.OneNote.format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = '*'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = 'Get-SiteOnenote', 'Get-SiteOnenoteNotebook', 
               'Get-SiteOnenoteNotebookSection', 
               'Get-SiteOnenoteNotebookSectionGroup', 
               'Get-SiteOnenoteNotebookSectionGroupParentNotebook', 
               'Get-SiteOnenoteNotebookSectionGroupParentSectionGroup', 
               'Get-SiteOnenoteNotebookSectionGroupSection', 
               'Get-SiteOnenoteNotebookSectionGroupSectionPage', 
               'Get-SiteOnenoteNotebookSectionGroupSectionPageParentNotebook', 
               'Get-SiteOnenoteNotebookSectionGroupSectionPageParentSection', 
               'Get-SiteOnenoteNotebookSectionGroupSectionParentNotebook', 
               'Get-SiteOnenoteNotebookSectionGroupSectionParentSectionGroup', 
               'Get-SiteOnenoteNotebookSectionPage', 
               'Get-SiteOnenoteNotebookSectionPageParentNotebook', 
               'Get-SiteOnenoteNotebookSectionPageParentSection', 
               'Get-SiteOnenoteNotebookSectionParentNotebook', 
               'Get-SiteOnenoteNotebookSectionParentSectionGroup', 
               'Get-SiteOnenoteNotebookSectionParentSectionGroupParentNotebook', 
               'Get-SiteOnenoteNotebookSectionParentSectionGroupParentSectionGroup', 
               'Get-SiteOnenoteNotebookSectionParentSectionGroupSection', 
               'Get-SiteOnenoteOperation', 'Get-SiteOnenotePage', 
               'Get-SiteOnenotePageParentNotebook', 
               'Get-SiteOnenotePageParentNotebookSection', 
               'Get-SiteOnenotePageParentNotebookSectionGroup', 
               'Get-SiteOnenotePageParentNotebookSectionGroupParentNotebook', 
               'Get-SiteOnenotePageParentNotebookSectionGroupParentSectionGroup', 
               'Get-SiteOnenotePageParentNotebookSectionGroupSection', 
               'Get-SiteOnenotePageParentNotebookSectionGroupSectionPage', 
               'Get-SiteOnenotePageParentNotebookSectionGroupSectionParentNotebook', 
               'Get-SiteOnenotePageParentNotebookSectionGroupSectionParentSectionGroup', 
               'Get-SiteOnenotePageParentNotebookSectionPage', 
               'Get-SiteOnenotePageParentNotebookSectionParentNotebook', 
               'Get-SiteOnenotePageParentNotebookSectionParentSectionGroup', 
               'Get-SiteOnenotePageParentNotebookSectionParentSectionGroupParentNotebook', 
               'Get-SiteOnenotePageParentNotebookSectionParentSectionGroupParentSectionGroup', 
               'Get-SiteOnenotePageParentNotebookSectionParentSectionGroupSection', 
               'Get-SiteOnenotePageParentSection', 
               'Get-SiteOnenotePageParentSectionGroup', 
               'Get-SiteOnenotePageParentSectionGroupParentNotebook', 
               'Get-SiteOnenotePageParentSectionGroupParentNotebookSection', 
               'Get-SiteOnenotePageParentSectionGroupParentNotebookSectionGroup', 
               'Get-SiteOnenotePageParentSectionGroupParentSectionGroup', 
               'Get-SiteOnenotePageParentSectionGroupSection', 
               'Get-SiteOnenotePageParentSectionPage', 
               'Get-SiteOnenotePageParentSectionParentNotebook', 
               'Get-SiteOnenotePageParentSectionParentNotebookSection', 
               'Get-SiteOnenotePageParentSectionParentNotebookSectionGroup', 
               'Get-SiteOnenotePageParentSectionParentNotebookSectionGroupParentNotebook', 
               'Get-SiteOnenotePageParentSectionParentNotebookSectionGroupParentSectionGroup', 
               'Get-SiteOnenotePageParentSectionParentNotebookSectionGroupSection', 
               'Get-SiteOnenoteResource', 'Get-SiteOnenoteSection', 
               'Get-SiteOnenoteSectionGroup', 
               'Get-SiteOnenoteSectionGroupParentNotebook', 
               'Get-SiteOnenoteSectionGroupParentNotebookSection', 
               'Get-SiteOnenoteSectionGroupParentNotebookSectionGroup', 
               'Get-SiteOnenoteSectionGroupParentNotebookSectionPage', 
               'Get-SiteOnenoteSectionGroupParentNotebookSectionPageParentNotebook', 
               'Get-SiteOnenoteSectionGroupParentNotebookSectionPageParentSection', 
               'Get-SiteOnenoteSectionGroupParentNotebookSectionParentNotebook', 
               'Get-SiteOnenoteSectionGroupParentNotebookSectionParentSectionGroup', 
               'Get-SiteOnenoteSectionGroupParentSectionGroup', 
               'Get-SiteOnenoteSectionGroupSection', 
               'Get-SiteOnenoteSectionGroupSectionPage', 
               'Get-SiteOnenoteSectionGroupSectionPageParentNotebook', 
               'Get-SiteOnenoteSectionGroupSectionPageParentNotebookSection', 
               'Get-SiteOnenoteSectionGroupSectionPageParentNotebookSectionGroup', 
               'Get-SiteOnenoteSectionGroupSectionPageParentSection', 
               'Get-SiteOnenoteSectionGroupSectionParentNotebook', 
               'Get-SiteOnenoteSectionGroupSectionParentNotebookSection', 
               'Get-SiteOnenoteSectionGroupSectionParentNotebookSectionGroup', 
               'Get-SiteOnenoteSectionGroupSectionParentSectionGroup', 
               'Get-SiteOnenoteSectionPage', 
               'Get-SiteOnenoteSectionPageParentNotebook', 
               'Get-SiteOnenoteSectionPageParentNotebookSection', 
               'Get-SiteOnenoteSectionPageParentNotebookSectionGroup', 
               'Get-SiteOnenoteSectionPageParentNotebookSectionGroupParentNotebook', 
               'Get-SiteOnenoteSectionPageParentNotebookSectionGroupParentSectionGroup', 
               'Get-SiteOnenoteSectionPageParentNotebookSectionGroupSection', 
               'Get-SiteOnenoteSectionPageParentSection', 
               'Get-SiteOnenoteSectionParentNotebook', 
               'Get-SiteOnenoteSectionParentNotebookSection', 
               'Get-SiteOnenoteSectionParentNotebookSectionGroup', 
               'Get-SiteOnenoteSectionParentNotebookSectionGroupParentNotebook', 
               'Get-SiteOnenoteSectionParentNotebookSectionGroupParentSectionGroup', 
               'Get-SiteOnenoteSectionParentNotebookSectionGroupSection', 
               'Get-SiteOnenoteSectionParentSectionGroup', 
               'Get-SiteOnenoteSectionParentSectionGroupParentNotebook', 
               'Get-SiteOnenoteSectionParentSectionGroupParentNotebookSection', 
               'Get-SiteOnenoteSectionParentSectionGroupParentNotebookSectionGroup', 
               'Get-SiteOnenoteSectionParentSectionGroupParentSectionGroup', 
               'Get-SiteOnenoteSectionParentSectionGroupSection', 
               'New-SiteOnenoteNotebook', 'New-SiteOnenoteNotebookSection', 
               'New-SiteOnenoteNotebookSectionGroup', 
               'New-SiteOnenoteNotebookSectionGroupSection', 
               'New-SiteOnenoteNotebookSectionGroupSectionPage', 
               'New-SiteOnenoteNotebookSectionPage', 
               'New-SiteOnenoteNotebookSectionParentSectionGroup', 
               'New-SiteOnenoteNotebookSectionParentSectionGroupSection', 
               'New-SiteOnenoteOperation', 'New-SiteOnenotePage', 
               'New-SiteOnenotePageParentNotebookSection', 
               'New-SiteOnenotePageParentNotebookSectionGroup', 
               'New-SiteOnenotePageParentNotebookSectionGroupSection', 
               'New-SiteOnenotePageParentNotebookSectionGroupSectionPage', 
               'New-SiteOnenotePageParentNotebookSectionPage', 
               'New-SiteOnenotePageParentNotebookSectionParentSectionGroup', 
               'New-SiteOnenotePageParentNotebookSectionParentSectionGroupSection', 
               'New-SiteOnenotePageParentSectionGroup', 
               'New-SiteOnenotePageParentSectionGroupParentNotebookSection', 
               'New-SiteOnenotePageParentSectionGroupParentNotebookSectionGroup', 
               'New-SiteOnenotePageParentSectionGroupSection', 
               'New-SiteOnenotePageParentSectionPage', 
               'New-SiteOnenotePageParentSectionParentNotebookSection', 
               'New-SiteOnenotePageParentSectionParentNotebookSectionGroup', 
               'New-SiteOnenotePageParentSectionParentNotebookSectionGroupSection', 
               'New-SiteOnenoteResource', 'New-SiteOnenoteSection', 
               'New-SiteOnenoteSectionGroup', 
               'New-SiteOnenoteSectionGroupParentNotebookSection', 
               'New-SiteOnenoteSectionGroupParentNotebookSectionGroup', 
               'New-SiteOnenoteSectionGroupParentNotebookSectionPage', 
               'New-SiteOnenoteSectionGroupSection', 
               'New-SiteOnenoteSectionGroupSectionPage', 
               'New-SiteOnenoteSectionGroupSectionPageParentNotebookSection', 
               'New-SiteOnenoteSectionGroupSectionPageParentNotebookSectionGroup', 
               'New-SiteOnenoteSectionGroupSectionParentNotebookSection', 
               'New-SiteOnenoteSectionGroupSectionParentNotebookSectionGroup', 
               'New-SiteOnenoteSectionPage', 
               'New-SiteOnenoteSectionPageParentNotebookSection', 
               'New-SiteOnenoteSectionPageParentNotebookSectionGroup', 
               'New-SiteOnenoteSectionPageParentNotebookSectionGroupSection', 
               'New-SiteOnenoteSectionParentNotebookSection', 
               'New-SiteOnenoteSectionParentNotebookSectionGroup', 
               'New-SiteOnenoteSectionParentNotebookSectionGroupSection', 
               'New-SiteOnenoteSectionParentSectionGroup', 
               'New-SiteOnenoteSectionParentSectionGroupParentNotebookSection', 
               'New-SiteOnenoteSectionParentSectionGroupParentNotebookSectionGroup', 
               'New-SiteOnenoteSectionParentSectionGroupSection', 
               'Update-SiteOnenote', 'Update-SiteOnenoteNotebook', 
               'Update-SiteOnenoteNotebookSection', 
               'Update-SiteOnenoteNotebookSectionGroup', 
               'Update-SiteOnenoteNotebookSectionGroupParentNotebook', 
               'Update-SiteOnenoteNotebookSectionGroupParentSectionGroup', 
               'Update-SiteOnenoteNotebookSectionGroupSection', 
               'Update-SiteOnenoteNotebookSectionGroupSectionPage', 
               'Update-SiteOnenoteNotebookSectionGroupSectionPageParentNotebook', 
               'Update-SiteOnenoteNotebookSectionGroupSectionPageParentSection', 
               'Update-SiteOnenoteNotebookSectionGroupSectionParentNotebook', 
               'Update-SiteOnenoteNotebookSectionGroupSectionParentSectionGroup', 
               'Update-SiteOnenoteNotebookSectionPage', 
               'Update-SiteOnenoteNotebookSectionPageParentNotebook', 
               'Update-SiteOnenoteNotebookSectionPageParentSection', 
               'Update-SiteOnenoteNotebookSectionParentNotebook', 
               'Update-SiteOnenoteNotebookSectionParentSectionGroup', 
               'Update-SiteOnenoteNotebookSectionParentSectionGroupParentNotebook', 
               'Update-SiteOnenoteNotebookSectionParentSectionGroupParentSectionGroup', 
               'Update-SiteOnenoteNotebookSectionParentSectionGroupSection', 
               'Update-SiteOnenoteOperation', 'Update-SiteOnenotePage', 
               'Update-SiteOnenotePageParentNotebook', 
               'Update-SiteOnenotePageParentNotebookSection', 
               'Update-SiteOnenotePageParentNotebookSectionGroup', 
               'Update-SiteOnenotePageParentNotebookSectionGroupParentNotebook', 
               'Update-SiteOnenotePageParentNotebookSectionGroupParentSectionGroup', 
               'Update-SiteOnenotePageParentNotebookSectionGroupSection', 
               'Update-SiteOnenotePageParentNotebookSectionGroupSectionPage', 
               'Update-SiteOnenotePageParentNotebookSectionGroupSectionParentNotebook', 
               'Update-SiteOnenotePageParentNotebookSectionGroupSectionParentSectionGroup', 
               'Update-SiteOnenotePageParentNotebookSectionPage', 
               'Update-SiteOnenotePageParentNotebookSectionParentNotebook', 
               'Update-SiteOnenotePageParentNotebookSectionParentSectionGroup', 
               'Update-SiteOnenotePageParentNotebookSectionParentSectionGroupParentNotebook', 
               'Update-SiteOnenotePageParentNotebookSectionParentSectionGroupParentSectionGroup', 
               'Update-SiteOnenotePageParentNotebookSectionParentSectionGroupSection', 
               'Update-SiteOnenotePageParentSection', 
               'Update-SiteOnenotePageParentSectionGroup', 
               'Update-SiteOnenotePageParentSectionGroupParentNotebook', 
               'Update-SiteOnenotePageParentSectionGroupParentNotebookSection', 
               'Update-SiteOnenotePageParentSectionGroupParentNotebookSectionGroup', 
               'Update-SiteOnenotePageParentSectionGroupParentSectionGroup', 
               'Update-SiteOnenotePageParentSectionGroupSection', 
               'Update-SiteOnenotePageParentSectionPage', 
               'Update-SiteOnenotePageParentSectionParentNotebook', 
               'Update-SiteOnenotePageParentSectionParentNotebookSection', 
               'Update-SiteOnenotePageParentSectionParentNotebookSectionGroup', 
               'Update-SiteOnenotePageParentSectionParentNotebookSectionGroupParentNotebook', 
               'Update-SiteOnenotePageParentSectionParentNotebookSectionGroupParentSectionGroup', 
               'Update-SiteOnenotePageParentSectionParentNotebookSectionGroupSection', 
               'Update-SiteOnenoteResource', 'Update-SiteOnenoteSection', 
               'Update-SiteOnenoteSectionGroup', 
               'Update-SiteOnenoteSectionGroupParentNotebook', 
               'Update-SiteOnenoteSectionGroupParentNotebookSection', 
               'Update-SiteOnenoteSectionGroupParentNotebookSectionGroup', 
               'Update-SiteOnenoteSectionGroupParentNotebookSectionPage', 
               'Update-SiteOnenoteSectionGroupParentNotebookSectionPageParentNotebook', 
               'Update-SiteOnenoteSectionGroupParentNotebookSectionPageParentSection', 
               'Update-SiteOnenoteSectionGroupParentNotebookSectionParentNotebook', 
               'Update-SiteOnenoteSectionGroupParentNotebookSectionParentSectionGroup', 
               'Update-SiteOnenoteSectionGroupParentSectionGroup', 
               'Update-SiteOnenoteSectionGroupSection', 
               'Update-SiteOnenoteSectionGroupSectionPage', 
               'Update-SiteOnenoteSectionGroupSectionPageParentNotebook', 
               'Update-SiteOnenoteSectionGroupSectionPageParentNotebookSection', 
               'Update-SiteOnenoteSectionGroupSectionPageParentNotebookSectionGroup', 
               'Update-SiteOnenoteSectionGroupSectionPageParentSection', 
               'Update-SiteOnenoteSectionGroupSectionParentNotebook', 
               'Update-SiteOnenoteSectionGroupSectionParentNotebookSection', 
               'Update-SiteOnenoteSectionGroupSectionParentNotebookSectionGroup', 
               'Update-SiteOnenoteSectionGroupSectionParentSectionGroup', 
               'Update-SiteOnenoteSectionPage', 
               'Update-SiteOnenoteSectionPageParentNotebook', 
               'Update-SiteOnenoteSectionPageParentNotebookSection', 
               'Update-SiteOnenoteSectionPageParentNotebookSectionGroup', 
               'Update-SiteOnenoteSectionPageParentNotebookSectionGroupParentNotebook', 
               'Update-SiteOnenoteSectionPageParentNotebookSectionGroupParentSectionGroup', 
               'Update-SiteOnenoteSectionPageParentNotebookSectionGroupSection', 
               'Update-SiteOnenoteSectionPageParentSection', 
               'Update-SiteOnenoteSectionParentNotebook', 
               'Update-SiteOnenoteSectionParentNotebookSection', 
               'Update-SiteOnenoteSectionParentNotebookSectionGroup', 
               'Update-SiteOnenoteSectionParentNotebookSectionGroupParentNotebook', 
               'Update-SiteOnenoteSectionParentNotebookSectionGroupParentSectionGroup', 
               'Update-SiteOnenoteSectionParentNotebookSectionGroupSection', 
               'Update-SiteOnenoteSectionParentSectionGroup', 
               'Update-SiteOnenoteSectionParentSectionGroupParentNotebook', 
               'Update-SiteOnenoteSectionParentSectionGroupParentNotebookSection', 
               'Update-SiteOnenoteSectionParentSectionGroupParentNotebookSectionGroup', 
               'Update-SiteOnenoteSectionParentSectionGroupParentSectionGroup', 
               'Update-SiteOnenoteSectionParentSectionGroupSection'

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = '*'

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'Microsoft;Office365;Graph;PowerShell;GraphServiceClient;Outlook;OneDrive;AzureAD;GraphAPI;Productivity;SharePoint;Intune;SDK;'

        # A URL to the license for this module.
        LicenseUri = 'https://aka.ms/devservicesagreement'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/microsoftgraph/msgraph-sdk-powershell'

        # A URL to an icon representing this module.
        IconUri = 'https://raw.githubusercontent.com/microsoftgraph/g-raph/master/g-raph.png'

        # ReleaseNotes of this module
        # ReleaseNotes = ''

        # Prerelease string of this module
        # Prerelease = ''

        # Flag to indicate whether the module requires explicit user acceptance for install/update/save
        # RequireLicenseAcceptance = $false

        # External dependent modules of this module
        # ExternalModuleDependencies = @()

    } # End of PSData hashtable

 } # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}
