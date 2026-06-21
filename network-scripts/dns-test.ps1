$ReportPath = ".\test-results\windows\dns-report.txt"

"===== DNS TEST =====" | Out-File $ReportPath

Resolve-DnsName google.com |
Out-File $ReportPath -Append

Write-Host "DNS report saved to $ReportPath"