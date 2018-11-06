$GetOS = [environment]::osversion.versionstring

"$GetOS"

Switch ($GetOS) {
	{$_ -like "*10.0.*" } {"Win10"}
	{$_ -like "*6.3.*" } {"Win8.1"}
	{$_ -like "*6.2.*" } {"Win8"}
	{$_ -like "*6.1.*" } {"Win7"}
	{$_ -like "*6.0.*" } {"WinVista"}
	default {"UnknownOS"}
		}

Read-Host