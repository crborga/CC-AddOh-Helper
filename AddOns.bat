@ECHO OFF
powershell.exe -executionpolicy bypass -windowstyle hidden -Command "& '%~dpn0.ps1'"
PAUSE