<#
.SYNOPSIS
Nexthink ACT: Restart device
.DESCRIPTION
Restart Device

.FUNCTIONALITY
On demand

.PARAMETERS Message
Message shown to user when reboot action is run

.LINK
https://github.com/ltaupiac/restartDevice
https://www.nexthink.com
https://www.nexthink.com/act-release/

.NOTES
Context: User
Version 1.0.0.0
#>

param(
    [Parameter(Mandatory=$true)][string]$Message
)


try {
    shutdown.exe /r /c $Message
    exit 0
 }
catch {
    Write-Error "Can't reboot device" + $_.Exception.Message
    exit 1
}
