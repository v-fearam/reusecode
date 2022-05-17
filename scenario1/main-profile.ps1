# Loading functions on the context
#    Global Common
. ..\common\script-code\powershell\log-v1.ps1
. ..\common\script-code\powershell\addLogHeader-v1.ps1
. ..\common\script-code\powershell\installModules-v1.ps1
. ..\common\script-code\powershell\installChocoApps-v1.ps1
#    Scenario Common
. .\common\script-code\powershell\includedfile-v1.ps1


# Installing missing dependencies

# $modules = @("Az.Accounts", "Az.Compute", "Az.Sql", "dbatools")
# Install-Modules($modules)

$chocolateyAppList = @('azure-cli') #we can select a specific version too
#Install-ChocolateyApp($chocolateyAppList) 
