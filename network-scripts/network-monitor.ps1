$ReportPath = ".\test-results\windows\network-monitor-report.txt"

"===== NETWORK MONITOR =====" | Out-File $ReportPath

Get-NetAdapterStatistics |
Out-File $ReportPath -Append

Write-Host "Network monitor report saved to $ReportPath"