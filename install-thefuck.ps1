pip install thefuck

if (!(Test-Path $profile)) {
    New-Item $profile -Force
}

Add-Content $profile '$env:PYTHONIOENCODING="utf-8"'
Add-Content -Path $profile -Value (Invoke-Expression "thefuck --alias") -Encoding UTF8
Write-Output "Restart PowerShell to start using thefuck."