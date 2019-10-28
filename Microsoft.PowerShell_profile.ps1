function Global:prompt {
	Write-Host("$([char]0x256D) ") -ForegroundColor Blue -NoNewline
	Write-Host(Get-Date)
	Write-Host("$([char]0x23D0) ") -ForegroundColor Blue -NoNewline
	Write-Host(Get-Location)
	Write-Host("$([char]0x2570) ") -ForegroundColor Blue -NoNewline
	Write-Host("$") -NoNewline
	Write-Host("_") -ForegroundColor Blue -NoNewline
	return " "
}