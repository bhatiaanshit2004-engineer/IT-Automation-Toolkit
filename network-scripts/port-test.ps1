$ReportPath = ".\test-results\windows\port-report.txt"

"===== PORT TEST =====" | Out-File $ReportPath

Test-NetConnection google.com -Port 443 |
Out-File $ReportPath -Append

Write-Host "Port report saved to $ReportPath"