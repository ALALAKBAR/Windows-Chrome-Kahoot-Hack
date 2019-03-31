@echo off
set /A num=0
:menu
cls
echo 1. Setup
echo 2. Start
echo 3. Exit
echo.
set /p sse=
if %sse% == 1 goto setup
if %sse% == 2 goto start
exit

:setup
cls
echo What is your kahoot Game PIN?
set /p pin=Game PIN: 
echo PIN SET AS %pin%.
echo.
echo What is the username prefix?
set /p user=Username Prefix: 
echo USERNAME PREFIX SET AS %user%.
timeout 3 >nul
goto menu

:start
echo Set WshShell = WScript.CreateObject("WScript.Shell") >kahootfile.vbs
echo WScript.Sleep 3000 >>kahootfile.vbs
echo WshShell.SendKeys "chrome.exe" >>kahootfile.vbs
echo WScript.Sleep 100 >>kahootfile.vbs
echo WshShell.SendKeys "{ENTER}" >>kahootfile.vbs
echo WScript.Sleep 3000 >>kahootfile.vbs
:rsal
set /A num+=1
echo WshShell.SendKeys "^t" >>kahootfile.vbs
echo WScript.Sleep 100 >>kahootfile.vbs
echo WshShell.SendKeys "kahoot.it" >>kahootfile.vbs
echo WScript.Sleep 100 >>kahootfile.vbs
echo WshShell.SendKeys "{ENTER}" >>kahootfile.vbs
echo WScript.Sleep 1500 >>kahootfile.vbs
echo WshShell.SendKeys "{TAB}" >>kahootfile.vbs
echo WScript.Sleep 100 >>kahootfile.vbs
echo WshShell.SendKeys "%pin%" >>kahootfile.vbs
echo WScript.Sleep 100 >>kahootfile.vbs
echo WshShell.SendKeys "{ENTER}" >>kahootfile.vbs
echo WScript.Sleep 1500 >>kahootfile.vbs
echo WshShell.SendKeys "{TAB}" >>kahootfile.vbs
echo WScript.Sleep 100 >>kahootfile.vbs
echo WshShell.SendKeys "%user%%num%" >>kahootfile.vbs
echo WScript.Sleep 100 >>kahootfile.vbs
echo WshShell.SendKeys "{ENTER}" >>kahootfile.vbs
if not %num% == 100 goto rsal
timeout 1 >nul
start kahootfile.vbs
timeout 0 >nul
powershell -c (New-Object -ComObject "Shell.Application").FileRun()
timeout 4 >nul
:times
echo CLOSE WINDOW WHEN SCRIPT COMPLETE
ipconfig /renew && ipconfig /flushdns
goto times
pause >nul