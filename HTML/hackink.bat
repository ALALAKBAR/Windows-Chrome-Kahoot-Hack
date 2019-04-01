@echo off

REM By: Aidan Biggs
REM AKA AT Vloggers
REM
REM Please do not claim this as your own.
REM
REM If you remove this it means you break the Code of Use found here: 
REM https://at-vloggers.weebly.com/code-of-use.html

set /A num=0
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
echo WshShell.SendKeys "%1" >>kahootfile.vbs
echo WScript.Sleep 100 >>kahootfile.vbs
echo WshShell.SendKeys "{ENTER}" >>kahootfile.vbs
echo WScript.Sleep 1500 >>kahootfile.vbs
echo WshShell.SendKeys "{TAB}" >>kahootfile.vbs
echo WScript.Sleep 100 >>kahootfile.vbs
echo WshShell.SendKeys "%2 %num%" >>kahootfile.vbs
echo WScript.Sleep 100 >>kahootfile.vbs
echo WshShell.SendKeys "{ENTER}" >>kahootfile.vbs
if not %num% == 100 goto rsal
timeout 1 >nul
start kahootfile.vbs
timeout 0 >nul
powershell -c (New-Object -ComObject "Shell.Application").FileRun()
timeout 4 >nul
:times
ipconfig /renew && ipconfig /flushdns
goto times
pause >nul
