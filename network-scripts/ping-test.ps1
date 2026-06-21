$ReportPath = ".\test-results\windows\ping-report.txt"

"===== PING TEST =====" | Out-File $ReportPath

Test-Connection google.com -Count 4 |
Out-File $ReportPath -Append

Write-Host "Ping report saved to $ReportPath"