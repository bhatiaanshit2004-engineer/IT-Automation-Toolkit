$ReportPath = ".\test-results\windows\windows-update-report.txt"

Get-HotFix | Out-File $ReportPath

Write-Host "Windows update report saved to $ReportPath"