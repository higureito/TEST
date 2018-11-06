@setlocal enabledelayedexpansion&set a=%*&(if defined a set a=!a:"=\"!&set a=!a:'=''!)&powershell/c $i=$input;iex ('$i^|^&{$PSCommandPath=\"%~f0\";$PSScriptRoot=\"%~dp0";#'+(${%~f0}^|Out-String)+'} '+('!a!'-replace'[$(),;@`{}]','`$0'))&exit/b
#StartPowerShellScript

#$GetOS = [environment]::osversion.versionstring
#"$GetOS"

Switch ( [environment]::osversion.versionstring ) {
	{$_ -like "*10.0.*" } {$GetOS = "Win10"}
	{$_ -like "*6.3.*" } {$GetOS = "Win8.1"}
	{$_ -like "*6.2.*" } {$GetOS = "Win8"}
	{$_ -like "*6.1.*" } {$GetOS = "Win7"}
	{$_ -like "*6.0.*" } {$GetOS = "WinVista"}
	default {$GetOS = "UnknownOS"}
		}
"$GetOS"

Write-Host "Press any key to continue ..."
$host.UI.RawUI.ReadKey()