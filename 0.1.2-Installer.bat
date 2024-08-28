: startscriptinstall
mkdir "C:\Users\%USERNAME%\appdata\roaming\HolyCheeseMan\CheeseScripting\Projects\"
mkdir "C:\Users\%USERNAME%\appdata\roaming\HolyCheeseMan\CheeseScripting\Tutorial\"
mkdir "C:\Users\%USERNAME%\appdata\roaming\HolyCheeseMan\CheeseScripting\APP\"
title Cheese Scripting Installer 0.1.2
cls
@echo off
cls
powershell write-host -back darkred -fore white This is an OPTIONAL But RECOMMENDED Cheese Scripting Installer.
powershell write-host -back red -fore white You may run Cheese Scripting alone 'if' wanted.
powershell write-host -fore white  
powershell write-host -back darkyellow -fore white Please give this installer file Administrator permission 'if' you see this:
echo ERROR: Access is denied.
echo ERROR: Access is denied.
echo ERROR: Access is denied.
echo ERROR: Access is denied.
echo ERROR: Access is denied.
echo ERROR: Access is denied.
echo ERROR: Access is denied.
powershell write-host -back darkgreen -fore white Write '"1"' To Install.
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

@echo del "C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScriptig\APP\Cheese Scripting.bat">"C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScriptig\APP\Unistall.bat"

echo Asset Installed
echo Configuring...
set "regKey=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\CheeseScripting"
set "appName=Cheese Scripting"
set "appVersion=0.1.0"
set "appPublisher=Holy Cheese Man"
set "appInstallLocation=C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Cheese Scripting.bat"
set "appUninstallString=C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScriptig\APP\Unistall.bat"
echo Checking...
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
echo Setting Up...

reg add "%regKey%" /v "DisplayName" /t REG_SZ /d "%appName%" /f
reg add "%regKey%" /v "DisplayVersion" /t REG_SZ /d "%appVersion%" /f
reg add "%regKey%" /v "Publisher" /t REG_SZ /d "%appPublisher%" /f
reg add "%regKey%" /v "InstallLocation" /t REG_SZ /d "%appInstallLocation%" /f
reg add "%regKey%" /v "UninstallString" /t REG_SZ /d "%appUninstallString%" /f
reg add "%regKey%" /v "QuietUninstallString" /t REG_SZ /d "%appUninstallString%" /f
reg add "%regKey%" /v "InstallDate" /t REG_SZ /d "%date:~10,4%%date:~4,2%%date:~7,2%" /f

del "%temp%\CreateShortcut.vbs"
echo Opening Downloads Folder...
start "" "%USERPROFILE%\Downloads"
echo Finishing.
: F4
powershell write-host -back green -fore white Files Installed.
powershell write-host -back blue -fore white Shortcut in Downloads.
pause
exit