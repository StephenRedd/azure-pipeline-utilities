

$script = Invoke-WebRequest https://raw.githubusercontent.com/StephenRedd/azure-pipeline-utilities/master/src/AzurePipelineUtilities/Stop-WinService.ps1
Invoke-Command -ScriptBlock ([scriptblock]::Create($script.Content)) -ArgumentList  @{"serviceName"="toast"}