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
powershell write-host -back blue -fore white Version: VD18M09Y24
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

echo Installing Main Script

set "url=https://raw.githubusercontent.com/HolyCheeseMan/Cheese-Scripting/Main/CheeseScripting.bat"
set "destination=C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Cheese Scripting.bat"

curl -L -o "%destination%" "%url%"

if exist "%destination%" (
    for %%A in ("%destination%") do set file_size=%%~zA
    echo %destination% Installed.
) else (
    echo Asset Failed to Install
)

echo Installing Web

set "url=https://raw.githubusercontent.com/HolyCheeseMan/Cheese-Scripting/Main/CheeseScripting-Web.html"
set "destination=C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Web.html"

curl -L -o "%destination%" "%url%"

if exist "%destination%" (
    for %%A in ("%destination%") do set file_size=%%~zA
    echo %destination% Installed.
) else (
    echo Asset Failed to Install
)

echo Installing Uninstaller

set "url=https://github.com/HolyCheeseMan/Cheese-Scripting/raw/Main/Uninstaller/Uninstaller.exe"
set "destination=C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Uninstaller.exe"

curl -L -o "%destination%" "%url%"

if exist "%destination%" (
    for %%A in ("%destination%") do set file_size=%%~zA
    echo %destination% Installed.
) else (
    echo Asset Failed to Install
)

echo Installing Additional Files

set "url=https://raw.githubusercontent.com/HolyCheeseMan/Cheese-Scripting/Main/CheeseScriptingIcon.ico"
set "destination=C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\CSCICON.ico"

curl -L -o "%destination%" "%url%"

if exist "%destination%" (
    for %%A in ("%destination%") do set file_size=%%~zA
    echo %destination% Installed.
) else (
    echo Asset Failed to Install
)

echo Setting Variables

@echo off
set "targetBatchPath=C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Cheese Scripting.bat"
set "shortcutPath=C:\Users\%USERNAME%\downloads\Cheese Scripting.lnk"
set "iconPath=C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\CSCICON.ico"

echo Creating Shortcut

echo Set oWS = WScript.CreateObject("WScript.Shell") > "%temp%\CreateShortcut.vbs"
echo Set oLink = oWS.CreateShortcut("%shortcutPath%") >> "%temp%\CreateShortcut.vbs"
echo Created Shortcut %shortcutPath%
echo oLink.TargetPath = "%targetBatchPath%" >> "%temp%\CreateShortcut.vbs"
echo oLink.IconLocation = "%iconPath%, 0" >> "%temp%\CreateShortcut.vbs"
echo Used Icon %iconPath%
echo oLink.Save >> "%temp%\CreateShortcut.vbs"

cscript //nologo "%temp%\CreateShortcut.vbs"

echo Clearing Temp Files

del "%temp%\CreateShortcut.vbs"


echo Asset Installed
echo Configuring... - Reg
set "regKey=HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\CheeseScripting"
echo Setting registry '%regKey%'
set "appName=Cheese Scripting"
set "appVersion=Used installer: VD18M09Y24"
set "appPublisher=Holy Cheese Man"
set "appInstallLocation=C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Cheese Scripting.bat"
set "appUninstallString=C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Uninstaller.exe"
echo Info Made:
echo %appName%
echo %appVersion%
echo %appPublisher%
echo %appInstallLocation%
echo %appUninstallString%
echo Checking...
@echo off
set "targetBatchPath=C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\Cheese Scripting.bat"
set "shortcutPath=C:\Users\%USERNAME%\downloads\Cheese Scripting.lnk"
set "iconPath=C:\Users\%USERNAME%\AppData\Roaming\HolyCheeseMan\CheeseScripting\APP\CSCICON.ico"

echo Configuring Shortcut

echo Set oWS = WScript.CreateObject("WScript.Shell") > "%temp%\CreateShortcut.vbs"
echo Set oLink = oWS.CreateShortcut("%shortcutPath%") >> "%temp%\CreateShortcut.vbs"
echo Created Shortcut %shortcutPath%
echo oLink.TargetPath = "%targetBatchPath%" >> "%temp%\CreateShortcut.vbs"
echo oLink.IconLocation = "%iconPath%, 0" >> "%temp%\CreateShortcut.vbs"
echo Used Icon %iconPath%
echo oLink.Save >> "%temp%\CreateShortcut.vbs"

echo Clearing Temp Files

cscript //nologo "%temp%\CreateShortcut.vbs"
echo Setting Up...
echo Installing Registry - %regKey%
reg add "%regKey%" /v "DisplayName" /t REG_SZ /d "%appName%" /f
echo Made '%appName%' in '%regKey%'
reg add "%regKey%" /v "DisplayVersion" /t REG_SZ /d "%appVersion%" /f
echo Made '%appVersion%' in '%regKey%'
reg add "%regKey%" /v "Publisher" /t REG_SZ /d "%appPublisher%" /f
echo Made '%appPublisher%' in '%regKey%'
reg add "%regKey%" /v "InstallLocation" /t REG_SZ /d "%appInstallLocation%" /f
echo Made '%appInstallLocation%' in '%regKey%'
reg add "%regKey%" /v "UninstallString" /t REG_SZ /d "%appUninstallString%" /f
echo Made '%appUninstallString%' in '%regKey%'
reg add "%regKey%" /v "QuietUninstallString" /t REG_SZ /d "%appUninstallString%" /f
echo Set same for 'QuietUninstallString'
reg add "%regKey%" /v "InstallDate" /t REG_SZ /d "%date:~10,4%%date:~4,2%%date:~7,2%" /f
echo Made Installdate: '%date:~10,4%%date:~4,2%%date:~7,2%' in '%regKey%'
echo Clearing Temp Files
del "%temp%\CreateShortcut.vbs"
echo Finishing.
: F4
powershell write-host -back green -fore white Files Installed.
powershell write-host -back blue -fore white Shortcut in Downloads.
pause
exit