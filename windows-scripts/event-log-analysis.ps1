$ReportPath = ".\test-results\windows\event-log-report.txt"

"===== EVENT LOG ANALYSIS =====" | Out-File $ReportPath

Get-WinEvent -FilterHashtable @{
    LogName = 'System'
    Level = 1,2
    StartTime = (Get-Date).AddDays(-1)
} | Select-Object TimeCreated, Id, LevelDisplayName, ProviderName, Message |
Out-File $ReportPath -Append

Write-Host "Event log report saved to $ReportPath"