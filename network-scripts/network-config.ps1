$ReportPath = ".\test-results\windows\network-config-report.txt"

"===== NETWORK CONFIGURATION =====" | Out-File $ReportPath

Get-NetIPConfiguration |
Out-File $ReportPath -Append

ipconfig /all |
Out-File $ReportPath -Append

Write-Host "Network configuration report saved to $ReportPath"