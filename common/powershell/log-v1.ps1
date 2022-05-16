#requires -version 2
<#
.SYNOPSIS
  Write on cosole a string including color if found some key words on the message and for each message include the time, who, script and line which require the log
.PARAMETER Msg
    Message to be write
.OUTPUTS
  The mesage is on the console
.NOTES
  Version:        1.0
  Author:         Arambarri Federico
  Creation Date:  11-5-2022
  Purpose/Change: Initial script development
  
.EXAMPLE
  log("Success deploy") -> on green because is the word success included, something like
  [2022-05-11-1339 | desktop-hg9kk6l\far | C:\temp\scenario1\main.ps1 (L 7)] Success 
#>

function log {
    param(
        [string]$Msg	
    )
    #colour it up...
    if ( $msg -match "error") {
        write-host "[$(Get-Date -Format yyy-MM-dd-HHmm) | $(whoami) | $($MyInvocation.ScriptName) (L $($MyInvocation.ScriptLineNumber))] $msg" -ForegroundColor red
    }
    elseif ($msg -match "warn|warning") {
        write-host "[$(Get-Date -Format yyy-MM-dd-HHmm) | $(whoami) | $($MyInvocation.ScriptName) (L $($MyInvocation.ScriptLineNumber))] $msg" -ForegroundColor yellow
    }
    elseif ($msg -match "info|information") {
        write-host "[$(Get-Date -Format yyy-MM-dd-HHmm) | $(whoami) | $($MyInvocation.ScriptName) (L $($MyInvocation.ScriptLineNumber))] $msg" -ForegroundColor cyan
    }    
    elseif ($msg -match "succedeed|success|OK" ) {
        write-host "[$(Get-Date -Format yyy-MM-dd-HHmm) | $(whoami) | $($MyInvocation.ScriptName) (L $($MyInvocation.ScriptLineNumber))] $msg" -ForegroundColor green
    }
    else {
        write-host "[$(Get-Date -Format yyy-MM-dd-HHmm) | $(whoami) | $($MyInvocation.ScriptName) (L $($MyInvocation.ScriptLineNumber))] $msg"
    }
}