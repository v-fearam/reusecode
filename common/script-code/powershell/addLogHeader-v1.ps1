#requires -version 2

<#
.SYNOPSIS
  Add date time, who and script as header on each line
.PARAMETER <Parameter_Name>
  each output line
.OUTPUTS
  lines with the header
.NOTES
  Version:        1.0
  Author:         Arambarri Federico
  Creation Date:  17/5/2022
  Purpose/Change: Initial script development
  
.EXAMPLE
  Write-Output "Some" | addLogHeader
  generates => [2022-05-17-1030 | desktop-hg9kk6l\far | C:\repositories\reusecode\scenario1\main.ps1 (L 15)] Some
#>

filter addLogHeader {"[$(Get-Date -Format yyy-MM-dd-HHmm) | $(whoami) | $($MyInvocation.ScriptName) (L $($MyInvocation.ScriptLineNumber))] $_"}