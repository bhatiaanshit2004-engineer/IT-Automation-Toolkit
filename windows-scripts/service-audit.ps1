$ReportPath = ".\test-results\windows\service-audit.txt"

Get-Service |
Sort-Object Status, DisplayName |
Out-File $ReportPath

Write-Host "Service audit saved to $ReportPath"