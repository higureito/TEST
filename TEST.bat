@echo off
::Code Output Off

:: ***** Get Windows Version *****

VER | find "95" > nul 
IF not errorlevel 1 GOTO Win_95

VER | find "98" > nul 
IF not errorlevel 1 GOTO Win_98

VER | find "NT" > nul 
IF not errorlevel 1 GOTO Win_NT

VER | find "2000" > nul 
IF not errorlevel 1 GOTO Win_2000

VER | find "XP" > nul 
IF not errorlevel 1 GOTO Win_XP

VER | find "Version 5.2." > nul
IF not errorlevel 1 GOTO Win_XP64or2003

VER | find "Version 6.0." > nul
IF not errorlevel 1 GOTO Win_Vistaor2008

VER | find "Version 6.1." > nul
IF not errorlevel 1 GOTO Win_7or2008R2

VER | find "Version 6.2." > nul
IF not errorlevel 1 GOTO Win_8or2012

VER | find "Version 6.3." > nul
IF not errorlevel 1 GOTO Win_8.1or2012R2

VER | find "Version 10.0." > nul
IF not errorlevel 1 GOTO Win_10or2016

GOTO unknown_os 

:win_95
echo "This is Windows 95"
goto OSend

:win_98
echo "This is Windows 98"
goto OSend

:win_NT 
echo "This is Windows NT"
goto OSend 

:win_2000
echo "This is Windows 2000"
goto OSend

:win_XP
echo "This is Windows XP"
goto OSend

:Win_XP64or2003
echo "This is Windows XP 64bit or Windows Server 2003"
goto OSend

:win_Vistaor2008
echo "This is Windows Vista or Windows Server 2008"
goto OSend

:win_7or2008R2
echo "This is Windows 7 or Windows Server 2008 R2"
goto OSend

:win_8or2012
echo "This is Windows 8 or Windows Server 2012"
goto OSend

:win_8.1or2012R2
echo "This is Windows 8.1 or Windows Server 2012 R2"
goto OSend

:win_10or2016
echo "This is Windows 10 or Windows Server 2016"
goto OSend

:unknown_os 
:OSend 

pause

:: ***** Get Windows Operating System *****

echo %PROCESSOR_ARCHITECTURE% | find "64" > nul
If not errorlevel 1 GOTO sys_64

echo %PROCESSOR_ARCHITECTURE% | find "86" > nul
If not errorlevel 1 GOTO sys_32

GOTO unknown_system

:sys_64
echo "This is 64Bit Operating System"
goto Sysend

:sys_32
echo "This is 32Bit Operating System"
goto Sysend

:unknown_system
:Sysend 

pause

::Comment Output
echo HelloWorld

cscript //nologo 

::Pause (No comment)
pause >nul
