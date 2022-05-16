# Loading functions on the context
#    Global Common
. ..\common\powershell\log-v1.ps1
. ..\common\powershell\installModules-v1.ps1
. ..\common\powershell\installChocoApps-v1.ps1
#    Scenario Common
. .\common\powershell\includedfile-v1.ps1


# Installing missing dependencies

# $modules = @("Az.Accounts", "Az.Compute", "Az.Sql", "dbatools")
# Install-Modules($modules)

$chocolateyAppList = @('azure-cli') #we can select a specific version too
Install-ChocolateyApp($chocolateyAppList)
