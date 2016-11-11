@echo off
@title Console
:: XP
ver | find "5.1." > NUL &&  goto run
:: XP 64-Bit/Win Server 2003
ver | find "5.2." > NUL &&  goto run
:: Vista/Win Server 2008
ver | find "6.0." > NUL &&  goto rasa
:: 7/Win Server 2008 R2
ver | find "6.1." > NUL &&  goto rasa
:: 8/Win Server 2012
ver | find "6.2." > NUL &&  goto rasa
:: 8.1/Win Server 2012 R2
ver | find "6.3." > NUL &&  goto rasa
:: 10/Win Server 2016
ver | find "10.0." > NUL &&  goto rasa
echo Cannot choice your system version!
pause
exit

:rasa
echo Run as Administrator...
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
goto run

:run
mode con: cols=150 lines=50
set shellpath=%~dp0
set PATH=%PATH%;%shellpath%Python27
cmd /k cd %shellpath%
pause
exit
