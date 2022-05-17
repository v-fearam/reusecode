. ..\common\script-code\powershell\log-v1.ps1

#requires -version 2

<#
.SYNOPSIS
  Install powershell modules
.PARAMETER <Parameter_Name>
    Modules names array to be installed 
.OUTPUTS
  The modules instaled
.NOTES
  Version:        1.0
  Author:         Arambarri Federico
  Creation Date:  16/5/2022
  Purpose/Change: Initial script development
  
.EXAMPLE
  Install-Modules(@('module1','module2'))
#>

function Install-Modules {
    param(
        [string[]]$modules
    )
    foreach ($module in $modules) {
        if (Get-Module -ListAvailable -Name $module) {
            log("$module already installed") 
        } 
        else {
            log("Installing $module") 
            Install-Module $module -Force -SkipPublisherCheck -Scope CurrentUser -ErrorAction Stop | Out-Null
            Import-Module $module -Force -Scope Local | Out-Null
        }
    }
}