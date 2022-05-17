#requires -version 2

<#
.SYNOPSIS
  Install dependencies with chocolaty, and chocholaty if needed
.PARAMETER <Parameter_Name>
    Array de depedencies to install
.OUTPUTS
  Dependency names@version to be installed. Not version means latest. See chocolaty documentation.
.NOTES
  Version:        1.0
  Author:         Arambarri Federico
  Creation Date:  16/5/2022
  Purpose/Change: Initial script development
  
.EXAMPLE
  Install-ChocolateyApp(@('dep1','dep2@version1'))
#>

function Install-ChocolateyApp {
    param(
        [string[]]$chocolateyAppList
    )
    try {
        choco config get cacheLocation
    }
    catch {
        Write-Output "Chocolatey not detected, trying to install now"
        Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    }
   
    foreach ($app in $chocolateyAppList) {
        Write-Output "Installing $app"
        & choco install $app /y | Write-Output
    }   
}