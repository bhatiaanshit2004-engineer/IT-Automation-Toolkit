$ReportPath = ".\test-results\windows\user-group-report.txt"

"===== LOCAL USERS =====" | Out-File $ReportPath
Get-LocalUser | Out-File $ReportPath -Append

"`n===== LOCAL GROUPS =====" | Out-File $ReportPath -Append
Get-LocalGroup | Out-File $ReportPath -Append

Write-Host "User and group audit saved to $ReportPath"