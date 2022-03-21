@echo off 
cd %1
set id=%2
if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min activator.cmd %* && exit
start "" .\escrip.vbs %id%
exit
