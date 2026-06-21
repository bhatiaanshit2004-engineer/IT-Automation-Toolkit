$ReportPath = ".\test-results\windows\traceroute-report.txt"

"===== TRACEROUTE =====" | Out-File $ReportPath

Test-NetConnection google.com -TraceRoute |
Out-File $ReportPath -Append

Write-Host "Traceroute report saved to $ReportPath"