# Loading functions on the context
#    Global Common
. ..\..\common\script\powershell\log-v1.ps1
. ..\..\common\script\powershell\addLogHeader-v1.ps1
. ..\..\common\script\powershell\installModules-v1.ps1
. ..\..\common\script\powershell\installChocoApps-v1.ps1
#    Scenario Common
. ..\common\script\powershell\includedfile-v1.ps1


# Installing missing dependencies

#$modules = @("Az.Accounts", "Az.Compute", "Az.Sql", "dbatools")
#Install-Modules($modules)

#$chocolateyAppList = @('azure-cli@2.23') #we can select a specific version too
#Install-ChocolateyApp($chocolateyAppList) 
