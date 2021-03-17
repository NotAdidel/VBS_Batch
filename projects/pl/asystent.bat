@echo off
if NOT exist %userprofile%\VBS_Batch goto error
if NOT exist msg+.bat copy %userprofile%\VBS_Batch\msg+.bat %cd%\msg+
if NOT exist speak.bat copy %userprofile%\VBS_Batch %cd%\msg+
call speak.bat "Hej!"
:menu
call speak.bat "Co mam zrobic"
set/p ask=: 
if %ask%==uruchom goto start
if %ask%==Uruchom goto start
if %ask%==data goto data
if %ask%==Data goto data
goto menu
:start
call speak "co chcesz uruchomic?"
set/p ask=: 
call speak "uruchamianie %ask%"
start %ask%
goto menu
:data
call msg+ "%time%, %date%" 64 "Asystent"
goto menu
:error
msg %username% prosze pobrac VBS_Batch
exit 1
