$ReportPath = ".\test-results\windows\performance-report.txt"

"===== PERFORMANCE REPORT =====" | Out-File $ReportPath

Get-Counter '\Processor(_Total)\% Processor Time' |
Out-File $ReportPath -Append

Get-Counter '\Memory\Available MBytes' |
Out-File $ReportPath -Append

Get-PSDrive -PSProvider FileSystem |
Out-File $ReportPath -Append

Write-Host "Performance report saved to $ReportPath"