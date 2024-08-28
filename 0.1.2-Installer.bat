: startscriptinstall
title Cheese Scripting Installer 0.1.2
cls
@echo off
cls
powershell write-host -back darkred -fore white This is an OPTIONAL Cheese Scripting Installer.
powershell write-host -back red -fore white You may run Cheese Scripting alone 'if' wanted.
powershell write-host -fore white  
powershell write-host -back green -fore white Write '"1"' To Install.
set /p installop= 
if "%installop%"=="1" goto installprocess
goto startscriptinstall
: installprocess
cls
set "url=https://raw.githubusercontent.com/HolyCheeseMan/Cheese-Scripting/Main/CheeseScriptingIcon.ico"
set "destination=C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\CSCICON.ico"

curl -L -o "%destination%" "%url%"

if exist "%destination%" (
    for %%A in ("%destination%") do set file_size=%%~zA
    echo Download successful! File size: %file_size% bytes
) else (
    echo Asset Installed
)

set "url=https://raw.githubusercontent.com/HolyCheeseMan/Cheese-Scripting/Main/CheeseScripting.bat"
set "destination=C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Cheese Scripting.bat"

curl -L -o "%destination%" "%url%"

if exist "%destination%" (
    for %%A in ("%destination%") do set file_size=%%~zA
    echo Download successful! File size: %file_size% bytes
) else (
    echo Asset Installed
)

set "url=https://raw.githubusercontent.com/HolyCheeseMan/Cheese-Scripting/Main/CheeseScripting-Web.html"
set "destination=C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Web.html"

curl -L -o "%destination%" "%url%"

if exist "%destination%" (
    for %%A in ("%destination%") do set file_size=%%~zA
    echo Download successful! File size: %file_size% bytes
) else (
    echo Asset Installed
)

@echo off
set "targetBatchPath=C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Cheese Scripting.bat"
set "shortcutPath=C:\Users\%USERNAME%\downloads\Cheese Scripting.lnk"
set "iconPath=C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\CSCICON.ico"

echo Set oWS = WScript.CreateObject("WScript.Shell") > "%temp%\CreateShortcut.vbs"
echo Set oLink = oWS.CreateShortcut("%shortcutPath%") >> "%temp%\CreateShortcut.vbs"
echo oLink.TargetPath = "%targetBatchPath%" >> "%temp%\CreateShortcut.vbs"
echo oLink.IconLocation = "%iconPath%, 0" >> "%temp%\CreateShortcut.vbs"
echo oLink.Save >> "%temp%\CreateShortcut.vbs"

cscript //nologo "%temp%\CreateShortcut.vbs"

del "%temp%\CreateShortcut.vbs"

echo Asset Installed
echo Configuring...
@echo off
set "targetBatchPath=C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Cheese Scripting.bat"
set "shortcutPath=C:\Users\%USERNAME%\downloads\Cheese Scripting.lnk"
set "iconPath=C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\CSCICON.ico"

echo Set oWS = WScript.CreateObject("WScript.Shell") > "%temp%\CreateShortcut.vbs"
echo Set oLink = oWS.CreateShortcut("%shortcutPath%") >> "%temp%\CreateShortcut.vbs"
echo oLink.TargetPath = "%targetBatchPath%" >> "%temp%\CreateShortcut.vbs"
echo oLink.IconLocation = "%iconPath%, 0" >> "%temp%\CreateShortcut.vbs"
echo oLink.Save >> "%temp%\CreateShortcut.vbs"

cscript //nologo "%temp%\CreateShortcut.vbs"

del "%temp%\CreateShortcut.vbs"
echo Opening Downloads Folder...
start "" "%USERPROFILE%\Downloads"
echo Finishing.
: F4
powershell write-host -back green -fore white Files Installed.
powershell write-host -back blue -fore white Shortcut in Downloads.
pause
exit