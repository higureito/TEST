@echo off

powershell Set-ExecutionPolicy RemoteSigned .\TEST.ps1
powershell Set-ExecutionPolicy Restricted