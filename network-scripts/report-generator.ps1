$ReportPath = ".\test-results\windows\combined-network-report.txt"

Start-Transcript -Path $ReportPath -Force

Write-Host "Running network diagnostics..."

Test-Connection google.com -Count 2
Resolve-DnsName google.com
Test-NetConnection google.com -Port 443

Stop-Transcript