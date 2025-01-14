#
# Module manifest for module 'Microsoft.Graph.Users.Actions'
#
# Generated by: Microsoft Corporation
#
# Generated on: 4/19/2022
#

@{

# Script module or binary module file associated with this manifest.
RootModule = './Microsoft.Graph.Users.Actions.psm1'

# Version number of this module.
ModuleVersion = '1.9.5'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = '8ccf53db-076f-49e1-bdce-1ce420971a1b'

# Author of this module
Author = 'Microsoft Corporation'

# Company or vendor of this module
CompanyName = 'Microsoft Corporation'

# Copyright statement for this module
Copyright = 'Microsoft Corporation. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Microsoft Graph PowerShell Cmdlets'

# Minimum version of the PowerShell engine required by this module
PowerShellVersion = '5.1'

# Name of the PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
DotNetFrameworkVersion = '4.7.2'

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# ClrVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @(@{ModuleName = 'Microsoft.Graph.Authentication'; ModuleVersion = '1.9.5'; })

# Assemblies that must be loaded prior to importing this module
RequiredAssemblies = './bin/Microsoft.Graph.Users.Actions.private.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = './Microsoft.Graph.Users.Actions.format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 
               'Add-MgUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRange', 
               'Add-MgUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeSort', 
               'Add-MgUserInsightSharedResourceMicrosoftGraphWorkbookRange', 
               'Add-MgUserInsightSharedResourceMicrosoftGraphWorkbookRangeSort', 
               'Add-MgUserInsightTrendingResourceMicrosoftGraphWorkbookRange', 
               'Add-MgUserInsightTrendingResourceMicrosoftGraphWorkbookRangeSort', 
               'Add-MgUserInsightUsedResourceMicrosoftGraphWorkbookRange', 
               'Add-MgUserInsightUsedResourceMicrosoftGraphWorkbookRangeSort', 
               'Add-MgUserPendingAccessReviewInstanceDecision', 
               'Approve-MgUserInsightSharedLastSharedMethodMicrosoftGraphScheduleChangeRequest', 
               'Approve-MgUserInsightSharedResourceMicrosoftGraphScheduleChangeRequest', 
               'Approve-MgUserInsightTrendingResourceMicrosoftGraphScheduleChangeRequest', 
               'Approve-MgUserInsightUsedResourceMicrosoftGraphScheduleChangeRequest', 
               'Clear-MgUserAndBlockManagedApp', 
               'Clear-MgUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRange', 
               'Clear-MgUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeFill', 
               'Clear-MgUserInsightSharedResourceMicrosoftGraphWorkbookRange', 
               'Clear-MgUserInsightSharedResourceMicrosoftGraphWorkbookRangeFill', 
               'Clear-MgUserInsightTrendingResourceMicrosoftGraphWorkbookRange', 
               'Clear-MgUserInsightTrendingResourceMicrosoftGraphWorkbookRangeFill', 
               'Clear-MgUserInsightUsedResourceMicrosoftGraphWorkbookRange', 
               'Clear-MgUserInsightUsedResourceMicrosoftGraphWorkbookRangeFill', 
               'Clear-MgUserManagedAppRegistrationByDeviceTag', 
               'Clear-MgUserManagedDevice', 'Clear-MgUserPresence', 
               'Clear-MgUserPresenceUserPreferredPresence', 
               'Complete-MgUserOutlookTask', 
               'Complete-MgUserOutlookTaskFolderTask', 
               'Complete-MgUserOutlookTaskGroupTaskFolderTask', 
               'Confirm-MgUserMemberGroup', 'Confirm-MgUserMemberObject', 
               'Copy-MgUserMailFolder', 'Copy-MgUserMailFolderChildFolder', 
               'Copy-MgUserMailFolderMessage', 'Copy-MgUserMessage', 
               'Copy-MgUserOnenoteNotebook', 'Copy-MgUserOnenotePageToSection', 
               'Copy-MgUserOnenoteSectionToNotebook', 
               'Copy-MgUserOnenoteSectionToSectionGroup', 
               'Disable-MgUserAuthenticationMethodSmSign', 
               'Disable-MgUserManagedDevice', 
               'Disable-MgUserManagedDeviceLostMode', 
               'Enable-MgUserAuthenticationMethodSmSign', 
               'Enable-MgUserManagedDeviceLostMode', 'Export-MgUserPersonalData', 
               'Find-MgUserManagedDevice', 'Find-MgUserMeetingTime', 
               'Get-MgUserById', 'Get-MgUserCalendarSchedule', 
               'Get-MgUserDefaultCalendarSchedule', 
               'Get-MgUserEventCalendarSchedule', 'Get-MgUserMailTip', 
               'Get-MgUserMemberGroup', 'Get-MgUserMemberObject', 
               'Get-MgUserOnenoteNotebookFromWebUrl', 
               'Get-MgUserOwnedObjectByType', 'Initialize-MgUserManagedDeviceEsim', 
               'Initialize-MgUserServicePlan', 
               'Invoke-MgAbortUserInsightSharedLastSharedMethodMicrosoftGraphPrintJob', 
               'Invoke-MgAbortUserInsightSharedResourceMicrosoftGraphPrintJob', 
               'Invoke-MgAbortUserInsightTrendingResourceMicrosoftGraphPrintJob', 
               'Invoke-MgAbortUserInsightUsedResourceMicrosoftGraphPrintJob', 
               'Invoke-MgAcceptUserEvent', 'Invoke-MgAcceptUserEventInstance', 
               'Invoke-MgAcceptUserEventInstanceTentatively', 
               'Invoke-MgAcceptUserEventTentatively', 
               'Invoke-MgAcceptUserInsightSharedLastSharedMethodMicrosoftGraphCalendarSharingMessage', 
               'Invoke-MgAcceptUserInsightSharedResourceMicrosoftGraphCalendarSharingMessage', 
               'Invoke-MgAcceptUserInsightTrendingResourceMicrosoftGraphCalendarSharingMessage', 
               'Invoke-MgAcceptUserInsightUsedResourceMicrosoftGraphCalendarSharingMessage', 
               'Invoke-MgAcceptUserMailFolderMessageMicrosoftGraphCalendarSharingMessage', 
               'Invoke-MgAcceptUserMailFolderMessageMicrosoftGraphEventMessageRequest', 
               'Invoke-MgAcceptUserMailFolderMessageMicrosoftGraphEventMessageRequestTentatively', 
               'Invoke-MgAcceptUserMessageMicrosoftGraphCalendarSharingMessage', 
               'Invoke-MgAcceptUserMessageMicrosoftGraphEventMessageRequest', 
               'Invoke-MgAcceptUserMessageMicrosoftGraphEventMessageRequestTentatively', 
               'Invoke-MgAcceptUserPendingAccessReviewInstanceDecisionInstanceRecommendation', 
               'Invoke-MgAcceptUserPendingAccessReviewInstanceRecommendation', 
               'Invoke-MgAutofitUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeFormatColumn', 
               'Invoke-MgAutofitUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRangeFormatRow', 
               'Invoke-MgAutofitUserInsightSharedResourceMicrosoftGraphWorkbookRangeFormatColumn', 
               'Invoke-MgAutofitUserInsightSharedResourceMicrosoftGraphWorkbookRangeFormatRow', 
               'Invoke-MgAutofitUserInsightTrendingResourceMicrosoftGraphWorkbookRangeFormatColumn', 
               'Invoke-MgAutofitUserInsightTrendingResourceMicrosoftGraphWorkbookRangeFormatRow', 
               'Invoke-MgAutofitUserInsightUsedResourceMicrosoftGraphWorkbookRangeFormatColumn', 
               'Invoke-MgAutofitUserInsightUsedResourceMicrosoftGraphWorkbookRangeFormatRow', 
               'Invoke-MgBatchUserPendingAccessReviewInstanceDecisionInstanceRecordDecision', 
               'Invoke-MgBatchUserPendingAccessReviewInstanceRecordDecision', 
               'Invoke-MgBulkReprovisionUserManagedDeviceCloudPc', 
               'Invoke-MgBulkRestoreUserManagedDeviceCloudPc', 
               'Invoke-MgCleanUserManagedDeviceWindowDevice', 
               'Invoke-MgCommitUserInsightSharedLastSharedMethodMicrosoftGraphMobileAppContentFile', 
               'Invoke-MgCommitUserInsightSharedResourceMicrosoftGraphMobileAppContentFile', 
               'Invoke-MgCommitUserInsightTrendingResourceMicrosoftGraphMobileAppContentFile', 
               'Invoke-MgCommitUserInsightUsedResourceMicrosoftGraphMobileAppContentFile', 
               'Invoke-MgCreateOrGetUserOnlineMeeting', 
               'Invoke-MgDeclineUserEvent', 'Invoke-MgDeclineUserEventInstance', 
               'Invoke-MgDeclineUserInsightSharedLastSharedMethodMicrosoftGraphScheduleChangeRequest', 
               'Invoke-MgDeclineUserInsightSharedResourceMicrosoftGraphScheduleChangeRequest', 
               'Invoke-MgDeclineUserInsightTrendingResourceMicrosoftGraphScheduleChangeRequest', 
               'Invoke-MgDeclineUserInsightUsedResourceMicrosoftGraphScheduleChangeRequest', 
               'Invoke-MgDeclineUserMailFolderMessageMicrosoftGraphEventMessageRequest', 
               'Invoke-MgDeclineUserMessageMicrosoftGraphEventMessageRequest', 
               'Invoke-MgDeprovisionUserManagedDevice', 
               'Invoke-MgDismissUserEventInstanceReminder', 
               'Invoke-MgDismissUserEventReminder', 
               'Invoke-MgDownUserManagedDeviceShut', 
               'Invoke-MgExecuteUserManagedDeviceAction', 
               'Invoke-MgExtractUserSecurityInformationProtectionSensitivityLabelContentLabel', 
               'Invoke-MgForwardUserEvent', 'Invoke-MgForwardUserEventInstance', 
               'Invoke-MgForwardUserMailFolderMessage', 
               'Invoke-MgForwardUserMessage', 
               'Invoke-MgHasUserDeviceEnrollmentConfigurationPayloadLink', 
               'Invoke-MgInvalidateUserRefreshToken', 'Invoke-MgLicenseUser', 
               'Invoke-MgLogoutUserManagedDeviceSharedAppleDeviceActiveUser', 
               'Invoke-MgOverrideUserManagedDeviceComplianceState', 
               'Invoke-MgPlayUserManagedDeviceLostModeSound', 
               'Invoke-MgRecordUserPendingAccessReviewInstanceDecision', 
               'Invoke-MgRedirectUserInsightSharedLastSharedMethodMicrosoftGraphPrintJob', 
               'Invoke-MgRedirectUserInsightSharedResourceMicrosoftGraphPrintJob', 
               'Invoke-MgRedirectUserInsightTrendingResourceMicrosoftGraphPrintJob', 
               'Invoke-MgRedirectUserInsightUsedResourceMicrosoftGraphPrintJob', 
               'Invoke-MgReenableUserManagedDevice', 
               'Invoke-MgRenewUserInsightSharedLastSharedMethodMicrosoftGraphMobileAppContentFileUpload', 
               'Invoke-MgRenewUserInsightSharedResourceMicrosoftGraphMobileAppContentFileUpload', 
               'Invoke-MgRenewUserInsightTrendingResourceMicrosoftGraphMobileAppContentFileUpload', 
               'Invoke-MgRenewUserInsightUsedResourceMicrosoftGraphMobileAppContentFileUpload', 
               'Invoke-MgReplyAllUserMailFolderMessage', 
               'Invoke-MgReplyAllUserMessage', 
               'Invoke-MgReplyUserMailFolderMessage', 'Invoke-MgReplyUserMessage', 
               'Invoke-MgReprovisionUserCloudPc', 
               'Invoke-MgReprovisionUserManagedDeviceCloudPc', 
               'Invoke-MgRetireUserManagedDevice', 
               'Invoke-MgRotateUserManagedDeviceBitLockerKey', 
               'Invoke-MgRotateUserManagedDeviceFileVaultKey', 
               'Invoke-MgScanUserManagedDeviceWindowDefender', 
               'Invoke-MgSnoozeUserEventInstanceReminder', 
               'Invoke-MgSnoozeUserEventReminder', 
               'Invoke-MgTargetUserInsightSharedLastSharedMethodMicrosoftGraphManagedAppProtectionApp', 
               'Invoke-MgTargetUserInsightSharedLastSharedMethodMicrosoftGraphTargetedManagedAppProtectionApp', 
               'Invoke-MgTargetUserInsightSharedResourceMicrosoftGraphManagedAppProtectionApp', 
               'Invoke-MgTargetUserInsightSharedResourceMicrosoftGraphTargetedManagedAppProtectionApp', 
               'Invoke-MgTargetUserInsightTrendingResourceMicrosoftGraphManagedAppProtectionApp', 
               'Invoke-MgTargetUserInsightTrendingResourceMicrosoftGraphTargetedManagedAppProtectionApp', 
               'Invoke-MgTargetUserInsightUsedResourceMicrosoftGraphManagedAppProtectionApp', 
               'Invoke-MgTargetUserInsightUsedResourceMicrosoftGraphTargetedManagedAppProtectionApp', 
               'Invoke-MgTranslateUserExchangeId', 
               'Invoke-MgTroubleshootUserCloudPc', 
               'Invoke-MgUnmergeUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRange', 
               'Invoke-MgUnmergeUserInsightSharedResourceMicrosoftGraphWorkbookRange', 
               'Invoke-MgUnmergeUserInsightTrendingResourceMicrosoftGraphWorkbookRange', 
               'Invoke-MgUnmergeUserInsightUsedResourceMicrosoftGraphWorkbookRange', 
               'Invoke-MgUnsubscribeUserMailFolderMessage', 
               'Invoke-MgUnsubscribeUserMessage', 'Lock-MgUserManagedDeviceRemote', 
               'Merge-MgUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRange', 
               'Merge-MgUserInsightSharedResourceMicrosoftGraphWorkbookRange', 
               'Merge-MgUserInsightTrendingResourceMicrosoftGraphWorkbookRange', 
               'Merge-MgUserInsightUsedResourceMicrosoftGraphWorkbookRange', 
               'Move-MgUserMailFolder', 'Move-MgUserMailFolderChildFolder', 
               'Move-MgUserMailFolderMessage', 'Move-MgUserManagedDeviceToOu', 
               'Move-MgUserMessage', 'Move-MgUserTaskAlltask', 
               'Move-MgUserTaskListTask', 'New-MgUserEventAttachmentUploadSession', 
               'New-MgUserInsightSharedLastSharedMethodMicrosoftGraphPrintDocumentUploadSession', 
               'New-MgUserInsightSharedResourceMicrosoftGraphPrintDocumentUploadSession', 
               'New-MgUserInsightTrendingResourceMicrosoftGraphPrintDocumentUploadSession', 
               'New-MgUserInsightUsedResourceMicrosoftGraphPrintDocumentUploadSession', 
               'New-MgUserMailFolderMessageAttachmentUploadSession', 
               'New-MgUserMailFolderMessageForward', 
               'New-MgUserMailFolderMessageReply', 
               'New-MgUserMailFolderMessageReplyAll', 
               'New-MgUserManagedDeviceLogCollectionRequest', 
               'New-MgUserManagedDeviceLogCollectionResponseDownloadUrl', 
               'New-MgUserManagedDeviceWindowsDefenderUpdateSignature', 
               'New-MgUserMessageAttachmentUploadSession', 
               'New-MgUserMessageForward', 'New-MgUserMessageReply', 
               'New-MgUserMessageReplyAll', 
               'New-MgUserMobileAppTroubleshootingEventAppLogCollectionRequestDownloadUrl', 
               'New-MgUserOutlookTaskAttachmentUploadSession', 
               'New-MgUserOutlookTaskFolderTaskAttachmentUploadSession', 
               'New-MgUserOutlookTaskGroupTaskFolderTaskAttachmentUploadSession', 
               'Remove-MgUserDeviceFromManagement', 
               'Remove-MgUserInsightSharedLastSharedMethodMicrosoftGraphWorkbookRange', 
               'Remove-MgUserInsightSharedResourceMicrosoftGraphWorkbookRange', 
               'Remove-MgUserInsightTrendingResourceMicrosoftGraphWorkbookRange', 
               'Remove-MgUserInsightUsedResourceMicrosoftGraphWorkbookRange', 
               'Remove-MgUserManagedDeviceUserFromSharedAppleDevice', 
               'Rename-MgUserCloudPc', 'Rename-MgUserCloudPcUserAccountType', 
               'Request-MgUserManagedDeviceRemoteAssistance', 
               'Reset-MgUserAuthenticationMethodPassword', 
               'Reset-MgUserManagedDevicePasscode', 
               'Reset-MgUserPendingAccessReviewInstanceDecision', 
               'Resize-MgUserManagedDeviceCloudPc', 'Restart-MgUserCloudPc', 
               'Restart-MgUserManagedDeviceNow', 'Restore-MgUser', 
               'Restore-MgUserManagedDeviceCloudPc', 
               'Restore-MgUserManagedDevicePasscode', 
               'Revoke-MgUserManagedDeviceAppleVppLicense', 'Revoke-MgUserSign', 
               'Send-MgUserMail', 'Send-MgUserMailFolderMessage', 
               'Send-MgUserManagedDeviceCustomNotificationToCompanyPortal', 
               'Send-MgUserMessage', 
               'Send-MgUserPendingAccessReviewInstanceDecisionInstanceReminder', 
               'Send-MgUserPendingAccessReviewInstanceReminder', 
               'Send-MgUserTeamworkActivityNotification', 
               'Set-MgUserDeviceEnrollmentConfiguration', 
               'Set-MgUserDeviceEnrollmentConfigurationPriority', 
               'Set-MgUserInsightSharedLastSharedMethodMicrosoftGraphTargetedManagedAppProtection', 
               'Set-MgUserInsightSharedLastSharedMethodMicrosoftGraphWindowInformationProtection', 
               'Set-MgUserInsightSharedResourceMicrosoftGraphTargetedManagedAppProtection', 
               'Set-MgUserInsightSharedResourceMicrosoftGraphWindowInformationProtection', 
               'Set-MgUserInsightTrendingResourceMicrosoftGraphTargetedManagedAppProtection', 
               'Set-MgUserInsightTrendingResourceMicrosoftGraphWindowInformationProtection', 
               'Set-MgUserInsightUsedResourceMicrosoftGraphTargetedManagedAppProtection', 
               'Set-MgUserInsightUsedResourceMicrosoftGraphWindowInformationProtection', 
               'Set-MgUserLicense', 'Set-MgUserManagedDeviceName', 
               'Set-MgUserPresence', 'Set-MgUserPresenceUserPreferredPresence', 
               'Skip-MgUserManagedDeviceActivationLock', 
               'Start-MgUserInsightSharedLastSharedMethodMicrosoftGraphPrintJob', 
               'Start-MgUserInsightSharedResourceMicrosoftGraphPrintJob', 
               'Start-MgUserInsightTrendingResourceMicrosoftGraphPrintJob', 
               'Start-MgUserInsightUsedResourceMicrosoftGraphPrintJob', 
               'Start-MgUserManagedDeviceConfigurationManagerAction', 
               'Stop-MgUserCloudPcGracePeriod', 'Stop-MgUserEvent', 
               'Stop-MgUserEventInstance', 
               'Stop-MgUserInsightSharedLastSharedMethodMicrosoftGraphPrintJob', 
               'Stop-MgUserInsightSharedResourceMicrosoftGraphPrintJob', 
               'Stop-MgUserInsightTrendingResourceMicrosoftGraphPrintJob', 
               'Stop-MgUserInsightUsedResourceMicrosoftGraphPrintJob', 
               'Stop-MgUserPendingAccessReviewInstance', 
               'Stop-MgUserPendingAccessReviewInstanceDecisionInstance', 
               'Stop-MgUserPendingAccessReviewInstanceDefinition', 
               'Stop-MgUserPendingAccessReviewInstanceStage', 
               'Sync-MgUserManagedDevice', 'Test-MgUserPassword', 
               'Test-MgUserProperty', 
               'Test-MgUserSecurityInformationProtectionSensitivityLabelApplication', 
               'Test-MgUserSecurityInformationProtectionSensitivityLabelClassificationResult', 
               'Test-MgUserSecurityInformationProtectionSensitivityLabelRemoval', 
               'Unblock-MgUserManagedApp', 
               'Update-MgUserManagedDeviceWindowDeviceAccount', 
               'Update-MgUserOnenotePageContent', 'Update-MgUserPassword'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = 'Invoke-MgBulkUserManagedDeviceReprovisionCloudPc', 
               'Invoke-MgBulkUserManagedDeviceRestoreCloudPc', 
               'Invoke-MgCloudUserManagedDevice'

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    #Profiles of this module
    Profiles =  @('v1.0','v1.0-beta')

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'Microsoft','Office365','Graph','PowerShell'

        # A URL to the license for this module.
        LicenseUri = 'https://aka.ms/devservicesagreement'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/microsoftgraph/msgraph-sdk-powershell'

        # A URL to an icon representing this module.
        IconUri = 'https://raw.githubusercontent.com/microsoftgraph/msgraph-sdk-powershell/master/documentation/images/graph_color256.png'

        # ReleaseNotes of this module
        ReleaseNotes = 'See https://aka.ms/GraphPowerShell-Release.'

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

