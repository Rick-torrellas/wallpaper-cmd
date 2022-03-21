@echo off
title Wallpaper Task
REM Llama al archivo con las variables.
call .\bin\var.cmd 
REM incio del programa con un choise
:inicio
cls
echo                                                                                    	              ----------------------------------------------
echo                                                                                    	              ----------------------------------------------
echo                                                                                    	              .               Wallpaper Task               .
echo                                                                                    	              .                                            .
echo                                                                                    	              .                                            .
echo                                                                                    	              .                                            .
echo                                                                                    	              .                                            .
echo                                                                                    	              .                                 .
choice /c 1234 /n /m "|1| Activar Wallpaper - |2| Desactivar Wallpaper - |3| Verificar - |4| Salir"
if errorlevel 4 goto :salir
if errorlevel 3 goto :verificar
if errorlevel 2 goto :off
if errorlevel 1 goto :on
REM activacion del wallpaper
:on
cls
echo ---------------------------------------------------------------------------
echo --------------------------- Lunes ----------------------------------------
echo:
REM aqui esta creando un task con schtasks, se necesita 
REM /tn nombre de la tarea, en este caso lo ponemos segun el dia de semana y lo dividimos en 3 partes, 1_Lunes, 2_Lunes, 3_Lunes.
REM /xml ruta del archivo xml, con el esquema de la tarea, en este caso es el archivo de la carpeta escrips, y lo dividimos en 3 partes, 1_Lunes, 2_Lunes, 3_Lunes.
REM /ru es el usuario del sistema operativo 
REM /rp es la contrasena de usuario del sistema operativo
schtasks /create /tn %l_1_name% /xml %l_1% /ru %banana% /rp %cambur%
schtasks /create /tn %l_2_name% /xml %l_2% /ru %banana% /rp %cambur%
schtasks /create /tn %l_3_name% /xml %l_3% /ru %banana% /rp %cambur%
echo ---------------------------------------------------------------------------
echo --------------------------- Martes ----------------------------------------
echo:
schtasks /create /tn %m_1_name% /xml %m_1% /ru %banana% /rp %cambur% 
schtasks /create /tn %m_2_name% /xml %m_2% /ru %banana% /rp %cambur%
schtasks /create /tn %m_3_name% /xml %m_3% /ru %banana% /rp %cambur%
echo ---------------------------------------------------------------------------
echo --------------------------- Miercoles ----------------------------------------
echo:
schtasks /create /tn %mi_1_name% /xml %mi_1% /ru %banana% /rp %cambur%
schtasks /create /tn %mi_2_name% /xml %mi_2% /ru %banana% /rp %cambur%
schtasks /create /tn %mi_3_name% /xml %mi_3% /ru %banana% /rp %cambur%
echo ---------------------------------------------------------------------------
echo --------------------------- Jueves ----------------------------------------
echo:
schtasks /create /tn %j_1_name% /xml %j_1% /ru %banana% /rp %cambur%
schtasks /create /tn %j_2_name% /xml %j_2% /ru %banana% /rp %cambur%
schtasks /create /tn %j_3_name% /xml %j_3% /ru %banana% /rp %cambur%
echo ---------------------------------------------------------------------------
echo --------------------------- Viernes ----------------------------------------
echo:
schtasks /create /tn %v_1_name% /xml %v_1% /ru %banana% /rp %cambur%
schtasks /create /tn %v_2_name% /xml %v_2% /ru %banana% /rp %cambur%
schtasks /create /tn %v_3_name% /xml %v_3% /ru %banana% /rp %cambur%
echo ---------------------------------------------------------------------------
echo --------------------------- Sabado ----------------------------------------
echo:
schtasks /create /tn %s_1_name% /xml %s_1% /ru %banana% /rp %cambur%
schtasks /create /tn %s_2_name% /xml %s_2% /ru %banana% /rp %cambur%
schtasks /create /tn %s_3_name% /xml %s_3% /ru %banana% /rp %cambur%
echo ---------------------------------------------------------------------------
echo --------------------------- Domingo ----------------------------------------
echo:
schtasks /create /tn %d_1_name% /xml %d_1% /ru %banana% /rp %cambur%
schtasks /create /tn %d_2_name% /xml %d_2% /ru %banana% /rp %cambur%
schtasks /create /tn %d_3_name% /xml %d_3% /ru %banana% /rp %cambur%
echo.
echo -Operacion Terminada-
choice /c 123 /n /m "|1| Repetir - |2| Regresar - |3| Salir"
if errorlevel 3 goto :salir
if errorlevel 2 goto :inicio
if errorlevel 1 goto :on
:off	
cls
echo ---------------------------------------------------------------------------
echo --------------------------- Lunes ----------------------------------------
echo:
schtasks /delete /tn %l_1_name% /f
schtasks /delete /tn %l_2_name% /f
schtasks /delete /tn %l_3_name% /f
echo ---------------------------------------------------------------------------
echo --------------------------- Martes ----------------------------------------
echo:
schtasks /delete /tn %m_1_name% /f
schtasks /delete /tn %m_2_name% /f
schtasks /delete /tn %m_3_name% /f
echo ---------------------------------------------------------------------------
echo --------------------------- Miercoles ----------------------------------------
echo:
schtasks /delete /tn %mi_1_name% /f
schtasks /delete /tn %mi_2_name% /f
schtasks /delete /tn %mi_3_name% /f
echo ---------------------------------------------------------------------------
echo --------------------------- Jueves ----------------------------------------
echo:
schtasks /delete /tn %j_1_name% /f
schtasks /delete /tn %j_2_name% /f
schtasks /delete /tn %j_3_name% /f
echo ---------------------------------------------------------------------------
echo --------------------------- Viernes ----------------------------------------
echo:
schtasks /delete /tn %v_1_name% /f
schtasks /delete /tn %v_2_name% /f
schtasks /delete /tn %v_3_name% /f
echo ---------------------------------------------------------------------------
echo --------------------------- Sabado ----------------------------------------
echo:
schtasks /delete /tn %s_1_name% /f
schtasks /delete /tn %s_2_name% /f
schtasks /delete /tn %s_3_name% /f
echo ---------------------------------------------------------------------------
echo --------------------------- Domingo ----------------------------------------
echo:
schtasks /delete /tn %d_1_name% /f
schtasks /delete /tn %d_2_name% /f
schtasks /delete /tn %d_3_name% /f
echo.
echo -Operacion Terminada-
choice /c 123 /n /m "|1| Repetir - |2| Regresar - |3| Salir"
if errorlevel 3 goto :salir
if errorlevel 2 goto :inicio
if errorlevel 1 goto :off
:: Te muestra todas las tareas programadas, asi puedes verificar si existen las tareas creadas
:verificar
cls 
title Wallpaper_Task_Verificar
echo ---------------------------------------------------------------------------
echo --------------------------- Lunes ----------------------------------------
echo:
echo %l_1_name%
schtasks /query /tn %l_1_name%
echo ----
echo %l_2_name%
schtasks /query /tn %l_2_name%
echo ----
echo %l_3_name%
schtasks /query /tn %l_3_name%
echo ----
echo:
echo ---------------------------------------------------------------------------
echo --------------------------- Martes ----------------------------------------
echo:
echo %m_1_name%
schtasks /query /tn %m_1_name%
echo ----
echo %m_2_name%
schtasks /query /tn %m_2_name%
echo ----
echo %m_3_name%
schtasks /query /tn %m_3_name%
echo ----
echo:
echo ---------------------------------------------------------------------------
echo --------------------------- Miercoles ----------------------------------------
echo:
echo:
echo %mi_1_name%
schtasks /query /tn %mi_1_name%
echo ----
echo %mi_2_name%
schtasks /query /tn %mi_2_name%
echo ----
echo %mi_3_name%
schtasks /query /tn %mi_3_name%
echo ----
echo:
echo ---------------------------------------------------------------------------
echo --------------------------- Jueves ----------------------------------------
echo:
echo:
echo %j_1_name%
schtasks /query /tn %j_1_name%
echo ----
echo %j_2_name%
schtasks /query /tn %j_2_name%
echo ----
echo %j_3_name%
schtasks /query /tn %j_3_name%
echo ----
echo:
echo ---------------------------------------------------------------------------
echo --------------------------- Viernes ----------------------------------------
echo:
echo:
echo %v_1_name%
schtasks /query /tn %v_1_name%
echo ----
echo %v_2_name%
schtasks /query /tn %v_2_name%
echo ----
echo %v_3_name%
schtasks /query /tn %v_3_name%
echo ----
echo:
echo ---------------------------------------------------------------------------
echo --------------------------- Sabado ----------------------------------------
echo:
echo:
echo %s_1_name%
schtasks /query /tn %s_1_name%
echo ----
echo %s_2_name%
schtasks /query /tn %s_2_name%
echo ----
echo %s_3_name%
schtasks /query /tn %s_3_name%
echo ----
echo:
echo ---------------------------------------------------------------------------
echo --------------------------- Domingo ----------------------------------------
echo:
echo:
echo %d_1_name%
schtasks /query /tn %d_1_name%
echo ----
echo %d_2_name%
schtasks /query /tn %d_2_name%
echo ----
echo %d_3_name%
schtasks /query /tn %d_3_name%
echo ----
echo:
pause
exit
:salir
cls
echo                                       ----------------------------------------------------------------------------------
echo                                       ----------------------------------------------------------------------------------
echo                                                                         Gracias por usar
echo                                                                          Wallpaper Task
echo                                       ----------------------------------------------------------------------------------
echo                                       ----------------------------------------------------------------------------------
@timeout /t 1 > nul
exit