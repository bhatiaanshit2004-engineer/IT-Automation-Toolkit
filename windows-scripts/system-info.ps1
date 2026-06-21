$ReportPath = ".\test-results\windows\system-info.txt"

"===== SYSTEM INFORMATION REPORT =====" | Out-File $ReportPath

"`n===== COMPUTER =====" | Out-File $ReportPath -Append
Get-ComputerInfo | Out-File $ReportPath -Append

"`n===== PROCESSOR =====" | Out-File $ReportPath -Append
Get-CimInstance Win32_Processor | Out-File $ReportPath -Append

"`n===== MEMORY =====" | Out-File $ReportPath -Append
Get-CimInstance Win32_PhysicalMemory | Out-File $ReportPath -Append

"`n===== DISK =====" | Out-File $ReportPath -Append
Get-Volume | Out-File $ReportPath -Append

"`n===== NETWORK =====" | Out-File $ReportPath -Append
ipconfig /all | Out-File $ReportPath -Append

Write-Host "System information report saved to $ReportPath"