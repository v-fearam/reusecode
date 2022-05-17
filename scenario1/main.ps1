#region preference: All the variables which define the script preference
. .\main-preferences.ps1

#stating log
Start-Transcript -Path $LogFilePath

#region profile: it is a script which execute all the dependencies of the current script. It could be load as powershell profile. It it is on the profile it will be out of the log. 
. .\main-profile.ps1 

#region main: Script actvities calling function already defined and loaded and base on the setting selected profile
log("main File")
showFUncDefinitionOnIncludedFile("using included file function and variable from preferences $Name")
log("Success event")
log("error event")
Write-Output "Some" | addLogHeader


#region finalization: stopping all we need 
Stop-Transcript