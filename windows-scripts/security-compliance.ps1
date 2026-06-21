$ReportPath = ".\test-results\windows\security-report.txt"

"===== FIREWALL STATUS =====" | Out-File $ReportPath
Get-NetFirewallProfile | Out-File $ReportPath -Append

"`n===== ANTIVIRUS STATUS =====" | Out-File $ReportPath -Append
Get-MpComputerStatus | Out-File $ReportPath -Append

Write-Host "Security report saved to $ReportPath"