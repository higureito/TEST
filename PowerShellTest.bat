@setlocal enabledelayedexpansion&set a=%*&(if defined a set a=!a:"=\"!&set a=!a:'=''!)&powershell/c $i=$input;iex ('$i^|^&{$PSCommandPath=\"%~f0\";$PSScriptRoot=\"%~dp0";#'+(${%~f0}^|Out-String)+'} '+('!a!'-replace'[$(),;@`{}]','`$0'))&exit/b
#StartPowerShellScript

$OS = Get-WmiObject -Class Win32_OperatingSystem

"$OS"

Switch ( $OS.Version ) {
	{$_ -match "10.0." } {$GetOS = "Win10"}
	{$_ -match "6.3." } {$GetOS = "Win8.1"}
	{$_ -match "6.2." } {$GetOS = "Win8"}
	{$_ -match "6.1." } {$GetOS = "Win7"}
	{$_ -match "6.0." } {$GetOS = "WinVista"}
	default {$GetOS = "UnknownOS"}
		}

"$GetOS"

Switch ( $OS.OSArchitecture ) {
	{$_ -match "64" } {$GetBit = "64-Bit"}
	{$_ -match "32" } {$GetBit = "32-Bit"}
	default {$GetBit = "UnknownOS"}
		}

"$GetBit"

Write-Host "Press any key to continue ..."
$host.UI.RawUI.ReadKey()