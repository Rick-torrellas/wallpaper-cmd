@echo off
call .\var.cmd
"%home%\escrips\%1.deskthemepack"
taskkill /f /im SystemSettings.exe
robocopy /mir "%home%\nucleo\imagen\%1_fav" "C:\Users\%username%\pictures"
exit
