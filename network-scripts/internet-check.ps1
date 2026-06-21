$ReportPath = ".\test-results\windows\internet-status-report.txt"

"===== INTERNET STATUS =====" | Out-File $ReportPath

if (Test-Connection 8.8.8.8 -Count 2 -Quiet) {
    "Internet Connection: Available" | Out-File $ReportPath -Append
}
else {
    "Internet Connection: Unavailable" | Out-File $ReportPath -Append
}

Write-Host "Internet status report saved to $ReportPath"