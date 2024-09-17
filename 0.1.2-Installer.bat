@echo off

    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"  

: startscriptinstall
mkdir "C:\Users\%USERNAME%\appdata\roaming\HolyCheeseMan\CheeseScripting\Projects\"
mkdir "C:\Users\%USERNAME%\appdata\roaming\HolyCheeseMan\CheeseScripting\Tutorial\"
mkdir "C:\Users\%USERNAME%\appdata\roaming\HolyCheeseMan\CheeseScripting\APP\"
title Cheese Scripting Installer
cls
@echo off
cls
powershell write-host -back blue -fore white Version: VD17M09Y24
powershell write-host -fore white  
powershell write-host -back darkred -fore white This is an OPTIONAL But RECOMMENDED Cheese Scripting Installer.
powershell write-host -back red -fore white You may run Cheese Scripting alone 'if' wanted.
powershell write-host -fore white  
powershell write-host -back darkyellow -fore white Install Version: 0.1.2
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

mkdir "C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\"
@echo : begin>"C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Unistall.bat"
@echo title Cheese Scripting Unistaller>>"C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Unistall.bat"
@echo @echo off>>"C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Unistall.bat"
@echo cls>>"C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Unistall.bat"
@echo powershell write-host -back blue -fore white Would you like to unistall Cheese Scripting?>>"C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Unistall.bat"
@echo powershell write-host -back green -fore white Type 1 - Unistall>>"C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Unistall.bat"
@echo set /p question= >>"C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Unistall.bat"
@echo if "%%question%%"=="1" goto unistall>>"C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Unistall.bat"
@echo goto begin>>"C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Unistall.bat"
@echo : unistall>>"C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Unistall.bat"
@echo del "C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Cheese Scripting.bat">>"C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Unistall.bat"
@echo del "C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\CSCICON.ico">>"C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Unistall.bat"
@echo del "C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\processScript.ps1">>"C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Unistall.bat"
@echo del "C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Web.html">>"C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Unistall.bat"
@echo reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\CheeseScripting" /f>>"C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Unistall.bat"
@echo cls>>"C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Unistall.bat"
@echo powershell write-host -back darkyellow -fore white Unistalled>>"C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Unistall.bat"
@echo pause>>"C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Unistall.bat"


echo Asset Installed
echo Configuring...
set "regKey=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\CheeseScripting"
set "appName=Cheese Scripting"
set "appVersion=Installed On 0.1.2"
set "appPublisher=Holy Cheese Man"
set "appInstallLocation=C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Cheese Scripting.bat"
set "appUninstallString=C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Unistall.bat"
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