@echo off
echo please choose language
echo 1 - PL 2 - EN
set /c 12
if %errorlevel%==1 goto DetectPL
if %errorlevel%==2 goto DetectEN
:DetectPL
set msg=false
set voice=false
set send=false
echo Wyszukiwanie plikow...
if exist msg+.bat set msg=true
if exist speak.bat set voice=true
if exist sendKey.bat set send=true
if %msg%==false goto errorpl
if %voice%==false goto errorpl
if %send%==false goto errorpl
goto installPL
:installPL
echo tworzenie folderow...
mkdir %userprofile%\VBS_Batch
echo kopiowanie plikow
copy sendKey.bat %userprofile%\VBS_Batch
copy msg+.bat %userprofile%\VBS_Batch
copy speak.bat %userprofile%\VBS_Batch
call %userprofile%\VBS_Batch\msg+.bat "instalacja skonczona!" 64 "VBS Batch"
:DetectEN
set msg=false
set voice=false
set send=false
echo searching files...
if exist msg+.bat set msg=true
if exist speak.bat set voice=true
if exist sendKey.bat set send=true
if %msg%==false goto erroren
if %voice%==false goto erroren
if %send%==false goto erroren
goto installEN
:installEN
echo creating folders...
mkdir %userprofile%\VBS_Batch
echo copying files...
copy sendKey.bat %userprofile%\VBS_Batch
copy msg+.bat %userprofile%\VBS_Batch
copy speak.bat %userprofile%\VBS_Batch
call %userprofile%\VBS_Batch\msg+.bat "installation ended!" 64 "VBS Batch"
:erroren
msg %username% ERROR can't find installation files
exit 1
:errorpl
msg %username% ERROR nie ma plikow instalacyjnych
exit 1
