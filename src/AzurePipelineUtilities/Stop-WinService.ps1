#
# Stop_WinService.ps1
#
[CmdletBinding()]
param([String]$serviceName)
$nService = Get-Service -Name '$serviceName' -ErrorAction SilentlyContinue

if ($nService.Status -ne "Stopped") {
    Stop-Service $serviceName
    Write-Host "Stopping $serviceName service"
}

if ($nService.Status -eq "stopped") {
    Write-Host "$serviceName service is already stopped"
}