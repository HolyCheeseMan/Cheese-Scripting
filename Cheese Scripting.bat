: startscriptinstall
@echo off
mkdir "C:\Users\%USERNAME%\appdata\roaming\HolyCheeseMan\CheeseScripting\Projects\"
mkdir "C:\Users\%USERNAME%\appdata\roaming\HolyCheeseMan\CheeseScripting\Tutorial\"
mkdir "C:\Users\%USERNAME%\appdata\roaming\HolyCheeseMan\CheeseScripting\APP\"
set Projects=C:\Users\%USERNAME%\appdata\roaming\HolyCheeseMan\CheeseScripting\Projects\
set Tutorial=C:\Users\%USERNAME%\appdata\roaming\HolyCheeseMan\CheeseScripting\Tutorial\
set processscriptfile=C:\Users\%USERNAME%\appdata\roaming\HolyCheeseMan\CheeseScripting\APP\processScript.ps1
@echo param (>%processscriptfile%
@echo     [string]$scriptPath>>%processscriptfile%
@echo )>>%processscriptfile%
@echo $lines = Get-Content -Path $scriptPath>>%processscriptfile%
@echo foreach ($line in $lines) {>>%processscriptfile%
@echo     $trimmedLine = $line.Trim()>>%processscriptfile%
@echo     if ($trimmedLine -ieq 'cls') {>>%processscriptfile%
@echo         Write-Host $trimmedLine -ForegroundColor DarkRed>>%processscriptfile%
@echo     } elseif ($trimmedLine -ilike 'title*') {>>%processscriptfile%
@echo         Write-Host $trimmedLine -ForegroundColor DarkBlue>>%processscriptfile%
@echo     } elseif ($trimmedLine -ilike 'echo*' -or $trimmedLine -ilike '@echo*') {>>%processscriptfile%
@echo         Write-Host $trimmedLine -ForegroundColor DarkGreen>>%processscriptfile%
@echo     } elseif ($trimmedLine -ilike 'set*') {>>%processscriptfile%
@echo         Write-Host $trimmedLine -ForegroundColor Blue>>%processscriptfile%
@echo     } elseif ($trimmedLine -ilike 'del*') {>>%processscriptfile%
@echo         Write-Host $trimmedLine -ForegroundColor red>>%processscriptfile%
@echo     } elseif ($trimmedLine -ilike 'mkdir*') {>>%processscriptfile%
@echo         Write-Host $trimmedLine -ForegroundColor darkyellow>>%processscriptfile%
@echo     } elseif ($trimmedLine -ilike 'dir*') {>>%processscriptfile%
@echo         Write-Host $trimmedLine -ForegroundColor darkyellow>>%processscriptfile%
@echo     } elseif ($trimmedLine -ilike 'color*') {>>%processscriptfile%
@echo         Write-Host $trimmedLine -ForegroundColor green>>%processscriptfile%
@echo     } elseif ($trimmedLine -ilike 'pause*') {>>%processscriptfile%
@echo         Write-Host $trimmedLine -ForegroundColor yellow>>%processscriptfile%
@echo     } elseif ($trimmedLine -ilike 'exit*') {>>%processscriptfile%
@echo         Write-Host $trimmedLine -ForegroundColor white -BackgroundColor DarkRed>>%processscriptfile%
@echo     } elseif ($trimmedLine -ilike 'goto*') {>>%processscriptfile%
@echo         Write-Host $trimmedLine -ForegroundColor cyan>>%processscriptfile%
@echo	  } elseif ($trimmedLine -ilike 'if*') {>>%processscriptfile%
@echo         Write-Host $trimmedLine -ForegroundColor white -BackgroundColor darkblue>>%processscriptfile%
@echo     } elseif ($trimmedLine -match '^\s*:$') {>>%processscriptfile%
@echo         Write-Host $trimmedLine -ForegroundColor DarkRed -BackgroundColor Yellow>>%processscriptfile%
@echo     } elseif ($trimmedLine.StartsWith(':')) {>>%processscriptfile%
@echo         Write-Host $trimmedLine -ForegroundColor DarkRed -BackgroundColor Yellow>>%processscriptfile%
@echo     } else {>>%processscriptfile%
@echo         Write-Host $trimmedLine>>%processscriptfile%
@echo     }>>%processscriptfile%
@echo }>>%processscriptfile%


goto menu



By Holy Cheese Man.
Thanks For Using.
C:





: menu
mkdir "C:\Users\%USERNAME%\appdata\roaming\HolyCheeseMan\CheeseScripting\Projects\"
mkdir "C:\Users\%USERNAME%\appdata\roaming\HolyCheeseMan\CheeseScripting\Tutorial\"
set Projects=C:\Users\%USERNAME%\appdata\roaming\HolyCheeseMan\CheeseScripting\Projects\
set Tutorial=C:\Users\%USERNAME%\appdata\roaming\HolyCheeseMan\CheeseScripting\Tutorial\
@echo off
color 02
title Cheese Scripting
set commands=?Help
cls
:::   ____ _                           ____            _       _   _             
:::  / ___| |__   ___  ___  ___  ___  / ___|  ___ _ __(_)_ __ | |_(_)_ __   __ _ 
::: | |   | '_ \ / _ \/ _ \/ __|/ _ \ \___ \ / __| '__| | '_ \| __| | '_ \ / _` |
::: | |___| | | |  __/  __/\__ \  __/  ___) | (__| |  | | |_) | |_| | | | | (_| |
:::  \____|_| |_|\___|\___||___/\___| |____/ \___|_|  |_| .__/ \__|_|_| |_|\__, |
:::                                                     |_|                |___/ 
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
powershell write-host -back red -fore white Version 0.1.0 Holy Cheese Man
powershell write-host -fore white Press "Enter" or Write:
powershell write-host -back blue -fore white ?Help
set /p commands= 
if "%commands%"=="?Help" goto help
if "%commands%"=="?Menu" goto menu
if "%commands%"=="?help" goto help
if "%commands%"=="?menu" goto menu
if "%commands%"=="?Load" goto load
if "%commands%"=="?load" goto load
if "%commands%"=="?Github" goto Github
if "%commands%"=="?github" goto Github
if "%commands%"=="?new" goto new-file
if "%commands%"=="?New" goto new-file
if "%commands%"=="?Export" goto export
if "%commands%"=="?export" goto export
if "%commands%"=="?Notepad" goto Notepad
if "%commands%"=="?notepad" goto Notepad
if "%commands%"=="?Tutorial" goto Tutorial
if "%commands%"=="?tutorial" goto Tutorial
if "%commands%"=="?Tipsearch" goto Tipsearch
if "%commands%"=="?tipsearch" goto Tipsearch
if "%commands%"=="?Folder" goto OpenFolder
if "%commands%"=="?folder" goto OpenFolder

goto menu

: help
color 07
cls
powershell write-host -back red -fore white Commands:
powershell write-host -fore white  
powershell write-host -fore white ?Github - Opens Cheese Scripter Github
powershell write-host -fore white ?Menu - Goes to Menu
powershell write-host -fore white ?Help - Shows Commands.
powershell write-host -back blue -fore white ?New - Creates a new project.
powershell write-host -back green -fore white ?Export - Exports your project to downloads.
powershell write-host -fore white ?Load - Loads a script.
powershell write-host -fore white ?Notepad - Opens notepad to current script.
powershell write-host -back darkyellow -fore white ?Tutorial - Advanced comprehensive beginners tutorial to batch.
powershell write-host -back darkred -fore white ?Tipsearch - Search for coding tips.
powershell write-host -fore white ?Folder - Opens Plugins folder.
set /p commands= 
if "%commands%"=="?Help" goto help
if "%commands%"=="?Menu" goto menu
if "%commands%"=="?help" goto help
if "%commands%"=="?menu" goto menu
if "%commands%"=="?Load" goto load
if "%commands%"=="?load" goto load
if "%commands%"=="?Github" goto Github
if "%commands%"=="?github" goto Github
if "%commands%"=="?new" goto new-file
if "%commands%"=="?New" goto new-file
if "%commands%"=="?Export" goto export
if "%commands%"=="?export" goto export
if "%commands%"=="?Notepad" goto Notepad
if "%commands%"=="?notepad" goto Notepad
if "%commands%"=="?Tutorial" goto Tutorial
if "%commands%"=="?tutorial" goto Tutorial
if "%commands%"=="?Tipsearch" goto Tipsearch
if "%commands%"=="?tipsearch" goto Tipsearch
if "%commands%"=="?Folder" goto OpenFolder
if "%commands%"=="?folder" goto OpenFolder

goto help

: Github
color 07
cls
powershell write-host -back red -fore white Sending you to GitHub.
powershell write-host -back blue -fore white ?Help
start https://github.com/HolyCheeseMan/Cheese-Scripting/
set /p commands= 
if "%commands%"=="?Help" goto help
if "%commands%"=="?Menu" goto menu
if "%commands%"=="?help" goto help
if "%commands%"=="?menu" goto menu
if "%commands%"=="?Load" goto load
if "%commands%"=="?load" goto load
if "%commands%"=="?Github" goto Github
if "%commands%"=="?github" goto Github
if "%commands%"=="?new" goto new-file
if "%commands%"=="?New" goto new-file
if "%commands%"=="?Export" goto export
if "%commands%"=="?export" goto export
if "%commands%"=="?Notepad" goto Notepad
if "%commands%"=="?notepad" goto Notepad
if "%commands%"=="?Tutorial" goto Tutorial
if "%commands%"=="?tutorial" goto Tutorial
if "%commands%"=="?Tipsearch" goto Tipsearch
if "%commands%"=="?tipsearch" goto Tipsearch
if "%commands%"=="?Folder" goto OpenFolder
if "%commands%"=="?folder" goto OpenFolder

: Notepad
cls
powershell write-host -back red -fore white Only works while editing a script. Use ?Load
powershell write-host -back blue -fore white ?Help
set /p filename= 
if "%filename%"=="?Help" goto help
if "%filename%"=="?Menu" goto menu
if "%filename%"=="?help" goto help
if "%filename%"=="?menu" goto menu
if "%filename%"=="?Load" goto load
if "%filename%"=="?load" goto load
if "%filename%"=="?Github" goto Github
if "%filename%"=="?github" goto Github
if "%filename%"=="?new" goto new-file
if "%filename%"=="?New" goto new-file
if "%filename%"=="?Export" goto export
if "%filename%"=="?export" goto export
if "%filename%"=="?Notepad" goto Notepad
if "%filename%"=="?notepad" goto Notepad
if "%filename%"=="?Tutorial" goto Tutorial
if "%filename%"=="?tutorial" goto Tutorial
if "%filename%"=="?Tipsearch" goto Tipsearch
if "%filename%"=="?tipsearch" goto Tipsearch
if "%filename%"=="?Folder" goto OpenFolder
if "%filename%"=="?folder" goto OpenFolder
goto Notepad

: new-file
set Projects=C:\Users\%USERNAME%\appdata\roaming\HolyCheeseMan\CheeseScripting\Projects\
color 07
cls
powershell write-host -back red -fore white Create a new project name:
set /p filename= 
if "%filename%"=="?Help" goto help
if "%filename%"=="?Menu" goto menu
if "%filename%"=="?help" goto help
if "%filename%"=="?menu" goto menu
if "%filename%"=="?Load" goto load
if "%filename%"=="?load" goto load
if "%filename%"=="?Github" goto Github
if "%filename%"=="?github" goto Github
if "%filename%"=="?new" goto new-file
if "%filename%"=="?New" goto new-file
if "%filename%"=="?Export" goto export
if "%filename%"=="?export" goto export
if "%filename%"=="?Notepad" goto Notepad
if "%filename%"=="?notepad" goto Notepad
if "%filename%"=="?Tutorial" goto Tutorial
if "%filename%"=="?tutorial" goto Tutorial
if "%filename%"=="?Tipsearch" goto Tipsearch
if "%filename%"=="?tipsearch" goto Tipsearch
if "%filename%"=="?Folder" goto OpenFolder
if "%filename%"=="?folder" goto OpenFolder
set scriptPath=%Projects%\%filename%.bat
goto newfilecheck
: newfilecheck

if exist "%scriptPath%" (
	goto overwrite
) else (
	goto createdscript
)
: overwrite
cls
    powershell write-host -back red -fore white "File exists! Overwrite file?"
	echo 1 - Yes
	echo 2 - No
	set /p commands= 
	if "%commands%"=="?Help" goto help
if "%commands%"=="?Menu" goto menu
if "%commands%"=="?help" goto help
if "%commands%"=="?menu" goto menu
if "%commands%"=="?Load" goto load
if "%commands%"=="?load" goto load
if "%commands%"=="?Github" goto Github
if "%commands%"=="?github" goto Github
if "%commands%"=="?new" goto new-file
if "%commands%"=="?New" goto new-file
if "%commands%"=="?Export" goto export
if "%commands%"=="?export" goto export
if "%commands%"=="?Notepad" goto Notepad
if "%commands%"=="?notepad" goto Notepad
if "%commands%"=="?Tutorial" goto Tutorial
if "%commands%"=="?tutorial" goto Tutorial
if "%commands%"=="?Tipsearch" goto Tipsearch
if "%commands%"=="?tipsearch" goto Tipsearch
if "%commands%"=="?Folder" goto OpenFolder
if "%commands%"=="?folder" goto OpenFolder
	if "%commands%"=="1" goto createdscript
	if "%commands%"=="2" goto newfilewarningN
	goto newfilecheck

: newfilewarningN
cls
powershell write-host -back red -fore white Failed to make new file.
powershell write-host -back blue -fore white ?Help
set /p commands= 
if "%commands%"=="?Help" goto help
if "%commands%"=="?Menu" goto menu
if "%commands%"=="?help" goto help
if "%commands%"=="?menu" goto menu
if "%commands%"=="?Load" goto load
if "%commands%"=="?load" goto load
if "%commands%"=="?Github" goto Github
if "%commands%"=="?github" goto Github
if "%commands%"=="?new" goto new-file
if "%commands%"=="?New" goto new-file
if "%commands%"=="?Export" goto export
if "%commands%"=="?export" goto export
if "%commands%"=="?Notepad" goto Notepad
if "%commands%"=="?notepad" goto Notepad
if "%commands%"=="?Tutorial" goto Tutorial
if "%commands%"=="?tutorial" goto Tutorial
if "%commands%"=="?Tipsearch" goto Tipsearch
if "%commands%"=="?tipsearch" goto Tipsearch
if "%commands%"=="?Folder" goto OpenFolder
if "%commands%"=="?folder" goto OpenFolder

: createdscript
	cls
	echo : start>"%scriptPath%"
	cls
	powershell write-host -back green -fore white "Created File, load it to edit."
	powershell write-host -back blue -fore white "?Load"
	powershell write-host -back red -fore white "?Help"
	set /p commands= 
	if "%commands%"=="?Help" goto help
if "%commands%"=="?Menu" goto menu
if "%commands%"=="?help" goto help
if "%commands%"=="?menu" goto menu
if "%commands%"=="?Load" goto load
if "%commands%"=="?load" goto load
if "%commands%"=="?Github" goto Github
if "%commands%"=="?github" goto Github
if "%commands%"=="?new" goto new-file
if "%commands%"=="?New" goto new-file
if "%commands%"=="?Export" goto export
if "%commands%"=="?export" goto export
if "%commands%"=="?Notepad" goto Notepad
if "%commands%"=="?notepad" goto Notepad
if "%commands%"=="?Tutorial" goto Tutorial
if "%commands%"=="?tutorial" goto Tutorial
if "%commands%"=="?Tipsearch" goto Tipsearch
if "%commands%"=="?tipsearch" goto Tipsearch
if "%commands%"=="?Folder" goto OpenFolder
if "%commands%"=="?folder" goto OpenFolder
	goto createdscript

: load
set Projects=C:\Users\%USERNAME%\appdata\roaming\HolyCheeseMan\CheeseScripting\Projects\
color 07
cls
powershell write-host -back blue -fore white "Write 1 to load personal projects: Only works when you saved a project with Cheese Scripter"
powershell write-host -back green -fore white "Write 2 to load other batch files: Write full path"
powershell write-host -back red -fore white "Or write a command."
set /p loadoption=
if "%loadoption%"=="?Help" goto help
if "%loadoption%"=="?Menu" goto menu
if "%loadoption%"=="?help" goto help
if "%loadoption%"=="?menu" goto menu
if "%loadoption%"=="?Load" goto load
if "%loadoption%"=="?load" goto load
if "%loadoption%"=="?Github" goto Github
if "%loadoption%"=="?github" goto Github
if "%loadoption%"=="?new" goto new-file
if "%loadoption%"=="?New" goto new-file
if "%loadoption%"=="?Export" goto export
if "%loadoption%"=="?export" goto export
if "%loadoption%"=="?Notepad" goto Notepad
if "%loadoption%"=="?notepad" goto Notepad
if "%loadoption%"=="?Tutorial" goto Tutorial
if "%loadoption%"=="?tutorial" goto Tutorial
if "%loadoption%"=="?Tipsearch" goto Tipsearch
if "%loadoption%"=="?tipsearch" goto Tipsearch
if "%loadoption%"=="?Folder" goto OpenFolder
if "%loadoption%"=="?folder" goto OpenFolder
if "%loadoption%"=="1" goto personalload
if "%loadoption%"=="2" goto otherload
goto load

: personalload
cls
powershell write-host -back blue -fore white Your Files:
for %%f in (%Projects%*) do (
	echo %%~nxf
)
powershell write-host -fore white  
powershell write-host -back green -fore white Write file name in project folder.
set /p filenameload=
if "%filenameload%"=="?Help" goto help
if "%filenameload%"=="?Menu" goto menu
if "%filenameload%"=="?help" goto help
if "%filenameload%"=="?menu" goto menu
if "%filenameload%"=="?Load" goto load
if "%filenameload%"=="?load" goto load
if "%filenameload%"=="?Github" goto Github
if "%filenameload%"=="?github" goto Github
if "%filenameload%"=="?new" goto new-file
if "%filenameload%"=="?New" goto new-file
if "%filenameload%"=="?Notepad" goto Notepad
if "%filenameload%"=="?notepad" goto Notepad
if "%filenameload%"=="?Export" goto export
if "%filenameload%"=="?export" goto export
if "%filenameload%"=="?Tutorial" goto Tutorial
if "%filenameload%"=="?tutorial" goto Tutorial
if "%filenameload%"=="?Tipsearch" goto Tipsearch
if "%filenameload%"=="?tipsearch" goto Tipsearch
if "%filenameload%"=="?Folder" goto OpenFolder
if "%filenameload%"=="?folder" goto OpenFolder
set scriptPath=%Projects%\%filenameload%.bat
goto check-fileload
: otherload
cls
powershell write-host -back green -fore white Enter the full path to a batch script file: C:\Users\%USERNAME%\Batch.bat
set /p scriptPath=
if "%scriptPath%"=="?Help" goto help
if "%scriptPath%"=="?Menu" goto menu
if "%scriptPath%"=="?help" goto help
if "%scriptPath%"=="?menu" goto menu
if "%scriptPath%"=="?Load" goto load
if "%scriptPath%"=="?load" goto load
if "%scriptPath%"=="?Github" goto Github
if "%scriptPath%"=="?github" goto Github
if "%scriptPath%"=="?new" goto new-file
if "%scriptPath%"=="?New" goto new-file
if "%scriptPath%"=="?Export" goto export
if "%scriptPath%"=="?export" goto export
if "%scriptPath%"=="?Notepad" goto Notepad
if "%scriptPath%"=="?notepad" goto Notepad
if "%scriptPath%"=="?Tutorial" goto Tutorial
if "%scriptPath%"=="?tutorial" goto Tutorial
if "%scriptPath%"=="?Tipsearch" goto Tipsearch
if "%scriptPath%"=="?tipsearch" goto Tipsearch
if "%scriptPath%"=="?Folder" goto OpenFolder
if "%scriptPath%"=="?folder" goto OpenFolder
: check-fileload
cls

if exist "%processscriptfile%" (
	goto exists-fileload
) else (
	goto crash
)

: exists-fileload

if exist "%scriptPath%" (
    cls
	powershell write-host -back blue -fore white "Commands can still be used like ?Export or ?Notepad. Script:"
    powershell -ExecutionPolicy Bypass -File "%processscriptfile%" -scriptPath "%scriptPath%"
    goto batchscript
) else (
    goto filedoesntexist
)



: batchscript
set /p code=
if "%code%"=="?Help" goto help
if "%code%"=="?Menu" goto menu
if "%code%"=="?help" goto help
if "%code%"=="?menu" goto menu
if "%code%"=="?Load" goto load
if "%code%"=="?load" goto load
if "%code%"=="?Github" goto Github
if "%code%"=="?github" goto Github
if "%code%"=="?new" goto new-file
if "%code%"=="?New" goto new-file
if "%code%"=="?Export" goto export
if "%code%"=="?export" goto export
if "%code%"=="?Notepad" goto Notepadopen
if "%code%"=="?notepad" goto Notepadopen
if "%code%"=="?Tutorial" goto Tutorial
if "%code%"=="?tutorial" goto Tutorial
if "%code%"=="?Tipsearch" goto Tipsearch
if "%code%"=="?tipsearch" goto Tipsearch
if "%code%"=="?Folder" goto OpenFolder
if "%code%"=="?folder" goto OpenFolder
@echo %code%>>"%scriptPath%"
goto check-fileload

: Notepadopen
cls
notepad "%scriptPath%"
goto check-fileload

: export
color 07
set Projects=C:\Users\%USERNAME%\appdata\roaming\HolyCheeseMan\CheeseScripting\Projects\
cls
powershell write-host -back blue -fore white Your Files:
for %%f in (%Projects%*) do (
	echo %%~nxf
)
powershell write-host -fore white  
powershell write-host -back green -fore white Pick a file to Export.
set /p exportfile=
set scriptPath=%Projects%\%exportfile%.bat
if "%exportfile%"=="?Help" goto help
if "%exportfile%"=="?Menu" goto menu
if "%exportfile%"=="?help" goto help
if "%exportfile%"=="?menu" goto menu
if "%exportfile%"=="?Load" goto load
if "%exportfile%"=="?load" goto load
if "%exportfile%"=="?Github" goto Github
if "%exportfile%"=="?github" goto Github
if "%exportfile%"=="?new" goto new-file
if "%exportfile%"=="?New" goto new-file
if "%exportfile%"=="?Export" goto export
if "%exportfile%"=="?export" goto export
if "%exportfile%"=="?Notepad" goto Notepad
if "%exportfile%"=="?notepad" goto Notepad
if "%exportfile%"=="?Tutorial" goto Tutorial
if "%exportfile%"=="?tutorial" goto Tutorial
if "%exportfile%"=="?Tipsearch" goto Tipsearch
if "%exportfile%"=="?tipsearch" goto Tipsearch
if "%exportfile%"=="?Folder" goto OpenFolder
if "%exportfile%"=="?folder" goto OpenFolder

if exist "%scriptPath%" (
	goto export2
) else (
	goto filedoesntexist
)


goto crash

: export2
cls
xcopy "%scriptPath%" "C:\Users\%USERNAME%\downloads\"
cls
powershell write-host -back green -fore white Exported File.
powershell write-host -back blue -fore white ?Help
set /p commands= 
if "%commands%"=="?Help" goto help
if "%commands%"=="?Menu" goto menu
if "%commands%"=="?help" goto help
if "%commands%"=="?menu" goto menu
if "%commands%"=="?Load" goto load
if "%commands%"=="?load" goto load
if "%commands%"=="?Github" goto Github
if "%commands%"=="?github" goto Github
if "%commands%"=="?new" goto new-file
if "%commands%"=="?New" goto new-file
if "%commands%"=="?Export" goto export
if "%commands%"=="?export" goto export
if "%commands%"=="?Notepad" goto Notepad
if "%commands%"=="?notepad" goto Notepad
if "%commands%"=="?Tutorial" goto Tutorial
if "%commands%"=="?tutorial" goto Tutorial
if "%commands%"=="?Tipsearch" goto Tipsearch
if "%commands%"=="?tipsearch" goto Tipsearch
if "%commands%"=="?Folder" goto OpenFolder
if "%commands%"=="?folder" goto OpenFolder
goto help

: filedoesntexist
cls
powershell write-host -back red -fore white File Doesnt Exist
powershell write-host -back blue -fore white ?Help
set /p commands= 
if "%commands%"=="?Help" goto help
if "%commands%"=="?Menu" goto menu
if "%commands%"=="?help" goto help
if "%commands%"=="?menu" goto menu
if "%commands%"=="?Load" goto load
if "%commands%"=="?load" goto load
if "%commands%"=="?Github" goto Github
if "%commands%"=="?github" goto Github
if "%commands%"=="?new" goto new-file
if "%commands%"=="?New" goto new-file
if "%commands%"=="?Export" goto export
if "%commands%"=="?export" goto export
if "%commands%"=="?Notepad" goto Notepad
if "%commands%"=="?notepad" goto Notepad
if "%commands%"=="?Tutorial" goto Tutorial
if "%commands%"=="?tutorial" goto Tutorial
if "%commands%"=="?Tipsearch" goto Tipsearch
if "%commands%"=="?tipsearch" goto Tipsearch
if "%commands%"=="?Folder" goto OpenFolder
if "%commands%"=="?folder" goto OpenFolder
goto filedoesntexist


: Tutorial
mkdir "C:\Users\%USERNAME%\appdata\roaming\HolyCheeseMan\CheeseScripting\Tutorial\"
color 07
cls
powershell write-host -back darkyellow -fore white Welcome to a comprehensive beginners guide to Batch.
powershell write-host -back darkyellow -fore white Be warned this may be outdated 'in' the future like the Colored-Code-Text 'in' the main system.
powershell write-host -back blue -fore white Write anything to continue.
set /p commands= 
if "%commands%"=="?Help" goto help
if "%commands%"=="?Menu" goto menu
if "%commands%"=="?help" goto help
if "%commands%"=="?menu" goto menu
if "%commands%"=="?Load" goto load
if "%commands%"=="?load" goto load
if "%commands%"=="?Github" goto Github
if "%commands%"=="?github" goto Github
if "%commands%"=="?new" goto new-file
if "%commands%"=="?New" goto new-file
if "%commands%"=="?Export" goto export
if "%commands%"=="?export" goto export
if "%commands%"=="?Notepad" goto Notepad
if "%commands%"=="?notepad" goto Notepad
if "%commands%"=="?Tutorial" goto Tutorial
if "%commands%"=="?tutorial" goto Tutorial
if "%commands%"=="?Tipsearch" goto Tipsearch
if "%commands%"=="?tipsearch" goto Tipsearch
if "%commands%"=="?Folder" goto OpenFolder
if "%commands%"=="?folder" goto OpenFolder
cls
powershell write-host -back green -fore white First of all, this is a advanced scripting app for coding batch.
powershell write-host -back darkyellow -fore white So thank you for using it for this guide.
powershell write-host -back blue -fore white Write anything to continue.
set /p commands= 
if "%commands%"=="?Help" goto help
if "%commands%"=="?Menu" goto menu
if "%commands%"=="?help" goto help
if "%commands%"=="?menu" goto menu
if "%commands%"=="?Load" goto load
if "%commands%"=="?load" goto load
if "%commands%"=="?Github" goto Github
if "%commands%"=="?github" goto Github
if "%commands%"=="?new" goto new-file
if "%commands%"=="?New" goto new-file
if "%commands%"=="?Export" goto export
if "%commands%"=="?export" goto export
if "%commands%"=="?Notepad" goto Notepad
if "%commands%"=="?notepad" goto Notepad
if "%commands%"=="?Tutorial" goto Tutorial
if "%commands%"=="?tutorial" goto Tutorial
if "%commands%"=="?Tipsearch" goto Tipsearch
if "%commands%"=="?tipsearch" goto Tipsearch
if "%commands%"=="?Folder" goto OpenFolder
if "%commands%"=="?folder" goto OpenFolder
cls
: Tutorial2
powershell write-host -back green -fore white 1: Commands in this app:
powershell write-host -back green -fore white Commands allow you to travel across the app very fast.
powershell write-host -back green -fore white So, to get us started, type ?new.
powershell write-host -back blue -fore white Write ?New
set /p commands= 
if "%commands%"=="?Help" goto help
if "%commands%"=="?Menu" goto menu
if "%commands%"=="?help" goto help
if "%commands%"=="?menu" goto menu
if "%commands%"=="?Load" goto load
if "%commands%"=="?load" goto load
if "%commands%"=="?Github" goto Github
if "%commands%"=="?github" goto Github
if "%commands%"=="?new" goto new-file-tutorial
if "%commands%"=="?New" goto new-file-tutorial
if "%commands%"=="?Export" goto export
if "%commands%"=="?export" goto export
if "%commands%"=="?Notepad" goto Notepad
if "%commands%"=="?notepad" goto Notepad
if "%commands%"=="?Tutorial" goto Tutorial
if "%commands%"=="?tutorial" goto Tutorial
if "%commands%"=="?Tipsearch" goto Tipsearch
if "%commands%"=="?tipsearch" goto Tipsearch
if "%commands%"=="?Folder" goto OpenFolder
if "%commands%"=="?folder" goto OpenFolder
cls
goto Tutorial2

: new-file-tutorial
set Tutorial=C:\Users\%USERNAME%\appdata\roaming\HolyCheeseMan\CheeseScripting\Tutorial\
color 07
cls
powershell write-host -back green -fore white This is where you make new projects.
powershell write-host -back red -fore white Create a new project name:
set /p filename= 
if "%filename%"=="?Help" goto help
if "%filename%"=="?Menu" goto menu
if "%filename%"=="?help" goto help
if "%filename%"=="?menu" goto menu
if "%filename%"=="?Load" goto load
if "%filename%"=="?load" goto load
if "%filename%"=="?Github" goto Github
if "%filename%"=="?github" goto Github
if "%filename%"=="?new" goto new-file
if "%filename%"=="?New" goto new-file
if "%filename%"=="?Export" goto export
if "%filename%"=="?export" goto export
if "%filename%"=="?Notepad" goto Notepad
if "%filename%"=="?notepad" goto Notepad
if "%filename%"=="?Tutorial" goto Tutorial
if "%filename%"=="?tutorial" goto Tutorial
if "%filename%"=="?Tipsearch" goto Tipsearch
if "%filename%"=="?tipsearch" goto Tipsearch
if "%filename%"=="?Folder" goto OpenFolder
if "%filename%"=="?folder" goto OpenFolder
set scriptPath=%Tutorial%\%filename%.bat
goto newfilechecktutorial
: newfilechecktutorial

if exist "%scriptPath%" (
	goto overwritetutorial
) else (
	goto createdscripttutorial
)
: overwritetutorial
cls
    powershell write-host -back red -fore white "File exists! Overwrite file?"
	echo 1 - Yes
	echo 2 - No
	set /p commands= 
	if "%commands%"=="?Help" goto help
if "%commands%"=="?Menu" goto menu
if "%commands%"=="?help" goto help
if "%commands%"=="?menu" goto menu
if "%commands%"=="?Load" goto load
if "%commands%"=="?load" goto load
if "%commands%"=="?Github" goto Github
if "%commands%"=="?github" goto Github
if "%commands%"=="?new" goto new-file
if "%commands%"=="?New" goto new-file
if "%commands%"=="?Export" goto export
if "%commands%"=="?export" goto export
if "%commands%"=="?Notepad" goto Notepad
if "%commands%"=="?notepad" goto Notepad
if "%commands%"=="?Tutorial" goto Tutorial
if "%commands%"=="?tutorial" goto Tutorial
if "%commands%"=="?Tipsearch" goto Tipsearch
if "%commands%"=="?tipsearch" goto Tipsearch
if "%commands%"=="?Folder" goto OpenFolder
if "%commands%"=="?folder" goto OpenFolder
	if "%commands%"=="1" goto createdscripttutorial
	if "%commands%"=="2" goto newfilewarningNtutorial
	goto newfilechecktutorial

: newfilewarningNtutorial
cls
powershell write-host -back red -fore white Failed to make new file.
powershell write-host -back blue -fore white ?Help OR ?TutorialBack
set /p commands= 
if "%commands%"=="?Help" goto help
if "%commands%"=="?Menu" goto menu
if "%commands%"=="?help" goto help
if "%commands%"=="?menu" goto menu
if "%commands%"=="?Load" goto load
if "%commands%"=="?load" goto load
if "%commands%"=="?Github" goto Github
if "%commands%"=="?github" goto Github
if "%commands%"=="?new" goto new-file
if "%commands%"=="?New" goto new-file
if "%commands%"=="?Export" goto export
if "%commands%"=="?export" goto export
if "%commands%"=="?Notepad" goto Notepad
if "%commands%"=="?notepad" goto Notepad
if "%commands%"=="?Tutorial" goto Tutorial
if "%commands%"=="?tutorial" goto Tutorial
if "%commands%"=="?Tipsearch" goto Tipsearch
if "%commands%"=="?tipsearch" goto Tipsearch
if "%commands%"=="?Folder" goto OpenFolder
if "%commands%"=="?folder" goto OpenFolder
if "%commands%"=="?TutorialBack" goto new-file-tutorial
if "%commands%"=="?tutorialBack" goto new-file-tutorial

: createdscripttutorial
	cls
	echo : start>"%scriptPath%"
	cls
	powershell write-host -back green -fore white "Good job. You have made a project."
	powershell write-host -back blue -fore white "Now write ?Load"
	set /p commands= 
	if "%commands%"=="?Help" goto help
if "%commands%"=="?Menu" goto menu
if "%commands%"=="?help" goto help
if "%commands%"=="?menu" goto menu
if "%commands%"=="?Load" goto loadtutorial
if "%commands%"=="?load" goto loadtutorial
if "%commands%"=="?Github" goto Github
if "%commands%"=="?github" goto Github
if "%commands%"=="?new" goto new-file
if "%commands%"=="?New" goto new-file
if "%commands%"=="?Export" goto export
if "%commands%"=="?export" goto export
if "%commands%"=="?Notepad" goto Notepad
if "%commands%"=="?notepad" goto Notepad
if "%commands%"=="?Tutorial" goto Tutorial
if "%commands%"=="?tutorial" goto Tutorial
if "%commands%"=="?Tipsearch" goto Tipsearch
if "%commands%"=="?tipsearch" goto Tipsearch
if "%commands%"=="?Folder" goto OpenFolder
if "%commands%"=="?folder" goto OpenFolder
	goto createdscripttutorial
	
: loadtutorial
set Tutorial=C:\Users\%USERNAME%\appdata\roaming\HolyCheeseMan\CheeseScripting\Tutorial\
color 07
cls
powershell write-host -back darkyellow -fore white "2: This is what the load section looks like."
powershell write-host -back darkyellow -fore white "For now write 1."
powershell write-host -fore white  
powershell write-host -back blue -fore white "Write 1 to load personal projects: Only works when you saved a project with Cheese Scripter"
powershell write-host -back green -fore white "Write 2 to load other batch files: Write full path"
powershell write-host -back red -fore white "Or write a command."
set /p loadoption=
if "%loadoption%"=="?Help" goto help
if "%loadoption%"=="?Menu" goto menu
if "%loadoption%"=="?help" goto help
if "%loadoption%"=="?menu" goto menu
if "%loadoption%"=="?Load" goto load
if "%loadoption%"=="?load" goto load
if "%loadoption%"=="?Github" goto Github
if "%loadoption%"=="?github" goto Github
if "%loadoption%"=="?new" goto new-file
if "%loadoption%"=="?New" goto new-file
if "%loadoption%"=="?Export" goto export
if "%loadoption%"=="?export" goto export
if "%loadoption%"=="?Notepad" goto Notepad
if "%loadoption%"=="?notepad" goto Notepad
if "%loadoption%"=="?Tutorial" goto Tutorial
if "%loadoption%"=="?tutorial" goto Tutorial
if "%loadoption%"=="?Tipsearch" goto Tipsearch
if "%loadoption%"=="?tipsearch" goto Tipsearch
if "%loadoption%"=="?Folder" goto OpenFolder
if "%loadoption%"=="?folder" goto OpenFolder
if "%loadoption%"=="1" goto personalloadtutorial
goto loadtutorial

: personalloadtutorial
cls
powershell write-host -back blue -fore white Your Files:
for %%f in (%Tutorial%*) do (
	echo %%~nxf
)
powershell write-host -fore white  
powershell write-host -back darkyellow -fore white Pick the file you just made.
powershell write-host -back darkyellow -fore white "You 'do' 'not' write .bat at the end."
powershell write-host -back green -fore white Write file name in project folder.
set /p filenameload=
if "%filenameload%"=="?Help" goto help
if "%filenameload%"=="?Menu" goto menu
if "%filenameload%"=="?help" goto help
if "%filenameload%"=="?menu" goto menu
if "%filenameload%"=="?Load" goto load
if "%filenameload%"=="?load" goto load
if "%filenameload%"=="?Github" goto Github
if "%filenameload%"=="?github" goto Github
if "%filenameload%"=="?new" goto new-file
if "%filenameload%"=="?New" goto new-file
if "%filenameload%"=="?Notepad" goto Notepad
if "%filenameload%"=="?notepad" goto Notepad
if "%filenameload%"=="?Export" goto export
if "%filenameload%"=="?export" goto export
if "%filenameload%"=="?Tutorial" goto Tutorial
if "%filenameload%"=="?tutorial" goto Tutorial
if "%filenameload%"=="?Tipsearch" goto Tipsearch
if "%filenameload%"=="?tipsearch" goto Tipsearch
if "%filenameload%"=="?Folder" goto OpenFolder
if "%filenameload%"=="?folder" goto OpenFolder
set scriptPath=%Tutorial%\%filenameload%.bat
goto check-fileloadtutorial

: check-fileloadtutorial
cls
if exist "%scriptPath%" (
	cls
	powershell write-host -back darkyellow -fore white "3: This is your script workspace."
	powershell write-host -back darkyellow -fore white "Every script should start with '@echo off.'"
	powershell write-host -back darkyellow -fore white "This is because it hides the directory and makes it look nice."
	powershell write-host -back red -fore white "Write: '@echo off'"
	powershell write-host -fore white  
	powershell write-host -back blue -fore white "Commands can still be used. Script:"
    for /f "usebackq delims=" %%a in ("%scriptPath%") do (
        echo %%a
    )
	goto batchscripttutorial
) else (
	goto filedoesntexisttutorialload
)

: filedoesntexisttutorialload
cls
powershell write-host -back red -fore white "File doesnt exist."
powershell write-host -back blue -fore white Write ?Tutorialback
set /p commands= 
if "%commands%"=="?Help" goto help
if "%commands%"=="?Menu" goto menu
if "%commands%"=="?help" goto help
if "%commands%"=="?menu" goto menu
if "%commands%"=="?Load" goto load
if "%commands%"=="?load" goto load
if "%commands%"=="?Github" goto Github
if "%commands%"=="?github" goto Github
if "%commands%"=="?new" goto new-file
if "%commands%"=="?New" goto new-file
if "%commands%"=="?Export" goto export
if "%commands%"=="?export" goto export
if "%commands%"=="?Notepad" goto Notepad
if "%commands%"=="?notepad" goto Notepad
if "%commands%"=="?Tutorial" goto Tutorial
if "%commands%"=="?tutorial" goto Tutorial
if "%commands%"=="?Tutorialback" goto personalloadtutorial
if "%commands%"=="?tutorialback" goto personalloadtutorial
if "%commands%"=="?Tipsearch" goto Tipsearch
if "%commands%"=="?tipsearch" goto Tipsearch
if "%commands%"=="?Folder" goto OpenFolder
if "%commands%"=="?folder" goto OpenFolder
goto filedoesntexisttutorialload

: batchscripttutorial
set /p code=
if "%code%"=="?Help" goto help
if "%code%"=="?Menu" goto menu
if "%code%"=="?help" goto help
if "%code%"=="?menu" goto menu
if "%code%"=="?Load" goto load
if "%code%"=="?load" goto load
if "%code%"=="?Github" goto Github
if "%code%"=="?github" goto Github
if "%code%"=="?new" goto new-file
if "%code%"=="?New" goto new-file
if "%code%"=="?Export" goto export
if "%code%"=="?export" goto export
if "%code%"=="?Tutorial" goto Tutorial
if "%code%"=="?tutorial" goto Tutorial
if "%code%"=="@echo off" goto batchscripttutorial2
if "%code%"=="echo off" goto batchscripttutorial2
if "%code%"=="?Tipsearch" goto Tipsearch
if "%code%"=="?tipsearch" goto Tipsearch
if "%code%"=="?Folder" goto OpenFolder
if "%code%"=="?folder" goto OpenFolder
goto check-fileloadtutorial

: check-fileloadtutorial2
cls
if exist "%scriptPath%" (
	cls
	powershell write-host -back darkyellow -fore white "Good job."
	powershell write-host -back darkyellow -fore white "You can see your script has updated."
	powershell write-host -back darkyellow -fore white "Now lets 'title' your script."
	powershell write-host -back darkyellow -fore white "'Title' means a word you choose shows up on the top of CMD 'prompt' like on this app it is Cheese Scripting."
	powershell write-host -back red -fore white "Write: 'title' Any Text You Want"
	powershell write-host -fore white  
	powershell write-host -back blue -fore white "Commands can still be used. Script:"
    for /f "usebackq delims=" %%a in ("%scriptPath%") do (
        echo %%a
    )
	goto batchscripttutorial3
) else (
	goto filedoesntexisttutorial
)

: batchscripttutorial2
@echo %code%>>"%scriptPath%"
goto check-fileloadtutorial2


: batchscripttutorial3
set /p code=
if "%code%"=="?Help" goto help
if "%code%"=="?Menu" goto menu
if "%code%"=="?help" goto help
if "%code%"=="?menu" goto menu
if "%code%"=="?Load" goto load
if "%code%"=="?load" goto load
if "%code%"=="?Github" goto Github
if "%code%"=="?github" goto Github
if "%code%"=="?new" goto new-file
if "%code%"=="?New" goto new-file
if "%code%"=="?Export" goto export
if "%code%"=="?export" goto export
if "%code%"=="?Tutorial" goto Tutorial
if "%code%"=="?tutorial" goto Tutorial
if "%code%"=="?Tipsearch" goto Tipsearch
if "%code%"=="?tipsearch" goto Tipsearch
if "%code%"=="?Folder" goto OpenFolder
if "%code%"=="?folder" goto OpenFolder
if "%code:~0,5%"=="title" goto batchscripttutorial4
goto check-fileloadtutorial2

: batchscripttutorial4
@echo %code%>>"%scriptPath%"
goto check-fileloadtutorial3

: check-fileloadtutorial3
cls
if exist "%scriptPath%" (
	cls
	powershell write-host -back darkyellow -fore white "Your doing great."
	powershell write-host -back darkyellow -fore white "Now lets make it look good."
	echo 00: Black
	echo 01: Blue
	echo 02: Green
	echo 03: Aqua
	echo 04: Red
	echo 05: Purple
	echo 06: Yellow
	echo 07: White
	echo 08: Gray
	echo 09: Light Blue
	powershell write-host -back red -fore white "Write: 'color' '##'"
	powershell write-host -back red -fore white "Example: 'color' 02"
	powershell write-host -fore white  
	powershell write-host -back blue -fore white "Commands can still be used. Script:"
    for /f "usebackq delims=" %%a in ("%scriptPath%") do (
        echo %%a
    )
	goto batchscripttutorial5
) else (
	goto filedoesntexisttutorial
)

: batchscripttutorial5
set /p code=
if "%code%"=="?Help" goto help
if "%code%"=="?Menu" goto menu
if "%code%"=="?help" goto help
if "%code%"=="?menu" goto menu
if "%code%"=="?Load" goto load
if "%code%"=="?load" goto load
if "%code%"=="?Github" goto Github
if "%code%"=="?github" goto Github
if "%code%"=="?new" goto new-file
if "%code%"=="?New" goto new-file
if "%code%"=="?Export" goto export
if "%code%"=="?export" goto export
if "%code%"=="?Tutorial" goto Tutorial
if "%code%"=="?tutorial" goto Tutorial
if "%code%"=="?Tipsearch" goto Tipsearch
if "%code%"=="?tipsearch" goto Tipsearch
if "%code%"=="?Folder" goto OpenFolder
if "%code%"=="?folder" goto OpenFolder
if "%code%"=="color 00" goto batchscripttutorial6
if "%code%"=="color 01" goto batchscripttutorial6
if "%code%"=="color 02" goto batchscripttutorial6
if "%code%"=="color 03" goto batchscripttutorial6
if "%code%"=="color 04" goto batchscripttutorial6
if "%code%"=="color 05" goto batchscripttutorial6
if "%code%"=="color 06" goto batchscripttutorial6
if "%code%"=="color 07" goto batchscripttutorial6
if "%code%"=="color 08" goto batchscripttutorial6
if "%code%"=="color 09" goto batchscripttutorial6
goto check-fileloadtutorial3

: batchscripttutorial6
@echo %code%>>"%scriptPath%"
goto check-fileloadtutorial4

: check-fileloadtutorial4
cls
if exist "%scriptPath%" (
	cls
	powershell write-host -back darkyellow -fore white "Fantastic!"
	powershell write-host -back darkyellow -fore white "Now we need to clear all of the text."
	powershell write-host -back darkyellow -fore white "We 'do' this because every command says something"
	powershell write-host -back darkyellow -fore white "So clearing everthing will make the cmd 'Prompt' blank."
	powershell write-host -back red -fore white "Write 'cls'"
	powershell write-host -fore white  
	powershell write-host -back blue -fore white "Commands can still be used. Script:"
    for /f "usebackq delims=" %%a in ("%scriptPath%") do (
        echo %%a
    )
	goto batchscripttutorial7
) else (
	goto filedoesntexisttutorial
)

: batchscripttutorial7
set /p code=
if "%code%"=="?Help" goto help
if "%code%"=="?Menu" goto menu
if "%code%"=="?help" goto help
if "%code%"=="?menu" goto menu
if "%code%"=="?Load" goto load
if "%code%"=="?load" goto load
if "%code%"=="?Github" goto Github
if "%code%"=="?github" goto Github
if "%code%"=="?new" goto new-file
if "%code%"=="?New" goto new-file
if "%code%"=="?Export" goto export
if "%code%"=="?export" goto export
if "%code%"=="?Tutorial" goto Tutorial
if "%code%"=="?tutorial" goto Tutorial
if "%code%"=="?Tipsearch" goto Tipsearch
if "%code%"=="?tipsearch" goto Tipsearch
if "%code%"=="?Folder" goto OpenFolder
if "%code%"=="?folder" goto OpenFolder
if "%code%"=="cls" goto batchscripttutorial8
goto check-fileloadtutorial4

: batchscripttutorial8
@echo %code%>>"%scriptPath%"
goto check-fileloadtutorial5

: check-fileloadtutorial5
cls
if exist "%scriptPath%" (
	cls
	powershell write-host -back darkyellow -fore white "Epic!"
	powershell write-host -back darkyellow -fore white "Lets talk about the 'echo' command."
	powershell write-host -fore white 
	powershell write-host -back darkyellow -fore white "'Echo' in batch is how you make the cmd prompt say anything."
	powershell write-host -back darkyellow -fore white "All of the stuff you see now is using 'Echo'"
	powershell write-host -back red -fore white "Write: 'echo' Any Text You Want"
	powershell write-host -fore white  
	powershell write-host -back blue -fore white "Commands can still be used. Script:"
    for /f "usebackq delims=" %%a in ("%scriptPath%") do (
        echo %%a
    )
	goto batchscripttutorial9
) else (
	goto filedoesntexisttutorial
)

: batchscripttutorial9
set /p code=
if "%code%"=="?Help" goto help
if "%code%"=="?Menu" goto menu
if "%code%"=="?help" goto help
if "%code%"=="?menu" goto menu
if "%code%"=="?Load" goto load
if "%code%"=="?load" goto load
if "%code%"=="?Github" goto Github
if "%code%"=="?github" goto Github
if "%code%"=="?new" goto new-file
if "%code%"=="?New" goto new-file
if "%code%"=="?Export" goto export
if "%code%"=="?export" goto export
if "%code%"=="?Tutorial" goto Tutorial
if "%code%"=="?tutorial" goto Tutorial
if "%code%"=="?Tipsearch" goto Tipsearch
if "%code%"=="?tipsearch" goto Tipsearch
if "%code%"=="?Folder" goto OpenFolder
if "%code%"=="?folder" goto OpenFolder
if "%code:~0,5%"=="echo" goto batchscripttutorial10
if "%code:~0,5%"=="@echo" goto batchscripttutorial10
goto check-fileloadtutorial5

: batchscripttutorial10
@echo %code%>>"%scriptPath%"
goto check-fileloadtutorial6

: check-fileloadtutorial6
cls
if exist "%scriptPath%" (
	cls
	powershell write-host -back darkyellow -fore white "Awesome!"
	powershell write-host -back darkyellow -fore white "Lets finish off using 'pause'"
	powershell write-host -back darkyellow -fore white "'Pause' stops the script until you press a button."
	powershell write-host -back red -fore white "Write 'pause'"
	powershell write-host -fore white  
	powershell write-host -back blue -fore white "Commands can still be used. Script:"
    for /f "usebackq delims=" %%a in ("%scriptPath%") do (
        echo %%a
    )
	goto batchscripttutorial11
) else (
	goto filedoesntexisttutorial
)

: batchscripttutorial11
set /p code=
if "%code%"=="?Help" goto help
if "%code%"=="?Menu" goto menu
if "%code%"=="?help" goto help
if "%code%"=="?menu" goto menu
if "%code%"=="?Load" goto load
if "%code%"=="?load" goto load
if "%code%"=="?Github" goto Github
if "%code%"=="?github" goto Github
if "%code%"=="?new" goto new-file
if "%code%"=="?New" goto new-file
if "%code%"=="?Export" goto export
if "%code%"=="?export" goto export
if "%code%"=="?Tutorial" goto Tutorial
if "%code%"=="?tutorial" goto Tutorial
if "%code%"=="?Tipsearch" goto Tipsearch
if "%code%"=="?tipsearch" goto Tipsearch
if "%code%"=="?Folder" goto OpenFolder
if "%code%"=="?folder" goto OpenFolder
if "%code%"=="pause" goto batchscripttutorial12
goto check-fileloadtutorial6

: batchscripttutorial12
@echo %code%>>"%scriptPath%"
goto check-fileloadtutorial7

: check-fileloadtutorial7
cls
if exist "%scriptPath%" (
	cls
	powershell write-host -back darkyellow -fore white "4: Lets now test your script."
	powershell write-host -back red -fore white "You can also use ?Notepad to check your script"
	powershell write-host -back green -fore white "Write ?Export"
	powershell write-host -fore white  
	powershell write-host -back blue -fore white "Commands can still be used. Script:"
    for /f "usebackq delims=" %%a in ("%scriptPath%") do (
        echo %%a
    )
	goto batchscripttutorial13
) else (
	goto filedoesntexisttutorial
)

: batchscripttutorial13
set /p code=
if "%code%"=="?Help" goto help
if "%code%"=="?Menu" goto menu
if "%code%"=="?help" goto help
if "%code%"=="?menu" goto menu
if "%code%"=="?Load" goto load
if "%code%"=="?load" goto load
if "%code%"=="?Github" goto Github
if "%code%"=="?github" goto Github
if "%code%"=="?new" goto new-file
if "%code%"=="?New" goto new-file
if "%code%"=="?Export" goto exporttutorial
if "%code%"=="?export" goto exporttutorial
if "%code%"=="?Notepad" goto Notepadopentutorial
if "%code%"=="?notepad" goto Notepadopentutorial
if "%code%"=="?Tutorial" goto Tutorial
if "%code%"=="?tutorial" goto Tutorial
if "%code%"=="?Tipsearch" goto Tipsearch
if "%code%"=="?tipsearch" goto Tipsearch
if "%code%"=="?Folder" goto OpenFolder
if "%code%"=="?folder" goto OpenFolder
goto check-fileloadtutorial7

: filedoesntexisttutorial
cls
powershell write-host -back red -fore white Something went wrong.
powershell write-host -back blue -fore white ?Help
set /p commands= 
if "%commands%"=="?Help" goto help
if "%commands%"=="?Menu" goto menu
if "%commands%"=="?help" goto help
if "%commands%"=="?menu" goto menu
if "%commands%"=="?Load" goto load
if "%commands%"=="?load" goto load
if "%commands%"=="?Github" goto Github
if "%commands%"=="?github" goto Github
if "%commands%"=="?new" goto new-file
if "%commands%"=="?New" goto new-file
if "%commands%"=="?Export" goto export
if "%commands%"=="?export" goto export
if "%commands%"=="?Notepad" goto Notepad
if "%commands%"=="?notepad" goto Notepad
if "%commands%"=="?Tutorial" goto Tutorial
if "%commands%"=="?tutorial" goto Tutorial
if "%commands%"=="?Tipsearch" goto Tipsearch
if "%commands%"=="?tipsearch" goto Tipsearch
if "%commands%"=="?Folder" goto OpenFolder
if "%commands%"=="?folder" goto OpenFolder
goto filedoesntexisttutorial


: Notepadopentutorial
cls
notepad "%scriptPath%"
goto check-fileloadtutorial7

: exporttutorial
color 07
set Tutorial=C:\Users\%USERNAME%\appdata\roaming\HolyCheeseMan\CheeseScripting\Tutorial\
cls
powershell write-host -back darkyellow -fore white This is where you export your files.
powershell write-host -back darkyellow -fore white Pick the file we were working on.
powershell write-host -fore white  
powershell write-host -back blue -fore white Your Files:
for %%f in (%Tutorial%*) do (
	echo %%~nxf
)
powershell write-host -fore white  
powershell write-host -back green -fore white Pick a file to Export.
set /p exportfile=
set scriptPath=%Tutorial%\%exportfile%.bat
if "%exportfile%"=="?Help" goto help
if "%exportfile%"=="?Menu" goto menu
if "%exportfile%"=="?help" goto help
if "%exportfile%"=="?menu" goto menu
if "%exportfile%"=="?Load" goto load
if "%exportfile%"=="?load" goto load
if "%exportfile%"=="?Github" goto Github
if "%exportfile%"=="?github" goto Github
if "%exportfile%"=="?new" goto new-file
if "%exportfile%"=="?New" goto new-file
if "%exportfile%"=="?Export" goto export
if "%exportfile%"=="?export" goto export
if "%exportfile%"=="?Notepad" goto Notepad
if "%exportfile%"=="?notepad" goto Notepad
if "%exportfile%"=="?Tutorial" goto Tutorial
if "%exportfile%"=="?tutorial" goto Tutorial
if "%exportfile%"=="?Tipsearch" goto Tipsearch
if "%exportfile%"=="?tipsearch" goto Tipsearch
if "%exportfile%"=="?Folder" goto OpenFolder
if "%exportfile%"=="?folder" goto OpenFolder

if exist "%scriptPath%" (
	goto exporttutorial2
) else (
	goto filedoesntexisttutorialexport
)

: filedoesntexisttutorialexport
cls
powershell write-host -back red -fore white "File doesnt exist."
powershell write-host -back blue -fore white Write ?Tutorialback
set /p commands= 
if "%commands%"=="?Help" goto help
if "%commands%"=="?Menu" goto menu
if "%commands%"=="?help" goto help
if "%commands%"=="?menu" goto menu
if "%commands%"=="?Load" goto load
if "%commands%"=="?load" goto load
if "%commands%"=="?Github" goto Github
if "%commands%"=="?github" goto Github
if "%commands%"=="?new" goto new-file
if "%commands%"=="?New" goto new-file
if "%commands%"=="?Export" goto export
if "%commands%"=="?export" goto export
if "%commands%"=="?Notepad" goto Notepad
if "%commands%"=="?notepad" goto Notepad
if "%commands%"=="?Tutorial" goto Tutorial
if "%commands%"=="?tutorial" goto Tutorial
if "%commands%"=="?Tutorialback" goto exporttutorial
if "%commands%"=="?tutorialback" goto exporttutorial
if "%commands%"=="?Tipsearch" goto Tipsearch
if "%commands%"=="?tipsearch" goto Tipsearch
if "%commands%"=="?Folder" goto OpenFolder
if "%commands%"=="?folder" goto OpenFolder
goto filedoesntexisttutorialexport


goto crash

: exporttutorial2
cls
xcopy "%scriptPath%" "C:\Users\%USERNAME%\downloads\"
start "" "C:\Users\%USERNAME%\downloads\"
del "%scriptPath%"
cls
powershell write-host -back darkyellow -fore white Tutorial Complete.
powershell write-host -back darkyellow -fore white Try out your script 'in' your downloads.
powershell write-host -fore white  
powershell write-host -back green -fore white Exported File.
powershell write-host -back blue -fore white ?Help
set /p commands= 
if "%commands%"=="?Help" goto help
if "%commands%"=="?Menu" goto menu
if "%commands%"=="?help" goto help
if "%commands%"=="?menu" goto menu
if "%commands%"=="?Load" goto load
if "%commands%"=="?load" goto load
if "%commands%"=="?Github" goto Github
if "%commands%"=="?github" goto Github
if "%commands%"=="?new" goto new-file
if "%commands%"=="?New" goto new-file
if "%commands%"=="?Export" goto export
if "%commands%"=="?export" goto export
if "%commands%"=="?Notepad" goto Notepad
if "%commands%"=="?notepad" goto Notepad
if "%commands%"=="?Tutorial" goto Tutorial
if "%commands%"=="?tutorial" goto Tutorial
if "%commands%"=="?Tipsearch" goto Tipsearch
if "%commands%"=="?tipsearch" goto Tipsearch
if "%commands%"=="?Folder" goto OpenFolder
if "%commands%"=="?folder" goto OpenFolder
goto help

: Tipsearch
color 07
setlocal enabledelayedexpansion
set tips[0]=Option
set tips[1]=User Input
set tips[2]=Start
set tips[3]=Echo
set tips[4]=Exists
set tips[5]=Delay
set tips[6]=Timeout
set tips[7]=Call
set tips[8]=Read
set tips[9]=URL
set tips[10]=Links
set tips[11]=Echo off
set tips[12]=Label
set tips[13]=Color
set tips[14]=Dir
set tips[15]=mkdir

set count=15

set /a index=%random% %% count
cls
powershell write-host -back green -fore white Search for tips.
powershell write-host -back red -fore white Example: '!tips[%index%]!'
powershell write-host -back blue -fore white ?Help
set /p search= 
if "%search%"=="?Help" goto help
if "%search%"=="?Menu" goto menu
if "%search%"=="?help" goto help
if "%search%"=="?menu" goto menu
if "%search%"=="?Load" goto load
if "%search%"=="?load" goto load
if "%search%"=="?Github" goto Github
if "%search%"=="?github" goto Github
if "%search%"=="?new" goto new-file
if "%search%"=="?New" goto new-file
if "%search%"=="?Export" goto export
if "%search%"=="?export" goto export
if "%search%"=="?Notepad" goto Notepad
if "%search%"=="?notepad" goto Notepad
if "%search%"=="?Tutorial" goto Tutorial
if "%search%"=="?tutorial" goto Tutorial
if "%search%"=="?Tipsearch" goto Tipsearch
if "%search%"=="?tipsearch" goto Tipsearch
if "%search%"=="?Folder" goto OpenFolder
if "%search%"=="?folder" goto OpenFolder

set "query_upper=%search%"
for %%A in (a b c d e f g h i j k l m n o p q r s t u v w x y z) do (
    set "query_upper=!query_upper:%%A=%%A!"
)

echo Debug: Uppercase result is "%query_upper%"

: search1
if /I "%query_upper%"=="URL" (
    goto URL
) else (
    echo Searching...
)
: search2
if /I "%query_upper%"=="LINKS" (
    goto URL
) else (
    echo Searching...
)
: search3
if /I "%query_upper%"=="READ" (
    goto READ
) else (
    echo Searching...
)
: search4
if /I "%query_upper%"=="CALL" (
    goto CALL
) else (
    echo Searching...
)
: search5
if /I "%query_upper%"=="TIMEOUT" (
    goto TIMEOUT
) else (
    echo Searching...
)
: search6
if /I "%query_upper%"=="DELAY" (
    goto TIMEOUT
) else (
    echo Searching...
)
: search7
if /I "%query_upper%"=="EXISTS" (
    goto EXISTS
) else (
    echo Searching...
)
: search8
if /I "%query_upper%"=="@ECHO OFF" (
    goto ECHOOFF
) else (
    echo Searching...
)
: search9
if /I "%query_upper%"=="ECHO OFF" (
    goto ECHOOFF
) else (
    echo Searching...
)
: search10
if /I "%query_upper%"=="ECHO" (
    goto ECHO
) else (
    echo Searching...
)
: search11
if /I "%query_upper%"=="@ECHO" (
    goto ECHO
) else (
    echo Searching...
)
: search12
if /I "%query_upper%"=="START" (
    goto STARTQUERYQUESTION
) else (
    echo Searching...
)
: search13
if /I "%query_upper%"=="USER INPUT" (
    goto OPTIONSQUERYQUESTION
) else (
    echo Searching...
)
: search14
if /I "%query_upper%"=="OPTION" (
    goto OPTIONSQUERYQUESTION
) else (
    echo Searching...
)

: search15
if /I "%query_upper%"=="EXIST" (
    goto EXISTS
) else (
    echo Searching...
)

: search16
if /I "%query_upper%"=="COLOUR" (
    goto COLORQUERYQUESTION
) else (
    echo Searching...
)

: search17
if /I "%query_upper%"=="COLOR" (
    goto COLORQUERYQUESTION
) else (
    echo Searching...
)

: search18
if /I "%query_upper%"=="DIR" (
    goto DIRQUERYQUESTION
) else (
    echo Searching...
)

: search19
if /I "%query_upper%"=="MKDIR" (
    goto MKDIRQUERYQUESTION
) else (
    echo Searching...
)

: search20
if /I "%query_upper%"=="LABEL" (
    goto LABELQUERYQUESTION
) else (
    echo Failed Search...
)
 goto failedtipsearch


:URL
cls
powershell write-host -back green -fore white Answers for %search%.
powershell write-host -back blue -fore white ?Help

echo You can launch links through the "Start" command.
echo Lots of batch files use Links/URL's like this one.
echo How to use it?
echo Examples:
powershell write-host -back red -fore white 'start' https://%USERNAME%.'com'/
set /p search= 
if "%search%"=="?Help" goto help
if "%search%"=="?Menu" goto menu
if "%search%"=="?help" goto help
if "%search%"=="?menu" goto menu
if "%search%"=="?Load" goto load
if "%search%"=="?load" goto load
if "%search%"=="?Github" goto Github
if "%search%"=="?github" goto Github
if "%search%"=="?new" goto new-file
if "%search%"=="?New" goto new-file
if "%search%"=="?Export" goto export
if "%search%"=="?export" goto export
if "%search%"=="?Notepad" goto Notepad
if "%search%"=="?notepad" goto Notepad
if "%search%"=="?Tutorial" goto Tutorial
if "%search%"=="?tutorial" goto Tutorial
if "%search%"=="?Tipsearch" goto Tipsearch
if "%search%"=="?tipsearch" goto Tipsearch
if "%search%"=="?Folder" goto OpenFolder
if "%search%"=="?folder" goto OpenFolder
goto Tipsearch

:READ
cls
powershell write-host -back green -fore white Answers for %search%.
powershell write-host -back blue -fore white ?Help

echo You can read files and folders through this command.
echo Lots of batch files use this command like this one.
echo How to use it?
echo Examples:
powershell write-host -back darkyellow -fore white File:
powershell write-host -back red -fore white 'for' /f "usebackq delims=" '%%%%a' 'in' '(%USERNAME%.bat)' 'do' '('
powershell write-host -back red -fore white        'echo' '%%%%a'
powershell write-host -back red -fore white    ')'
powershell write-host -back darkyellow -fore white Folder:
powershell write-host -back red -fore white 'for' '%%%%f' 'in' '(%USERPROFILE%*)' 'do' '('
powershell write-host -back red -fore white	'echo' '%%%%~nxf'
powershell write-host -back red -fore white ')'

set /p search= 
if "%search%"=="?Help" goto help
if "%search%"=="?Menu" goto menu
if "%search%"=="?help" goto help
if "%search%"=="?menu" goto menu
if "%search%"=="?Load" goto load
if "%search%"=="?load" goto load
if "%search%"=="?Github" goto Github
if "%search%"=="?github" goto Github
if "%search%"=="?new" goto new-file
if "%search%"=="?New" goto new-file
if "%search%"=="?Export" goto export
if "%search%"=="?export" goto export
if "%search%"=="?Notepad" goto Notepad
if "%search%"=="?notepad" goto Notepad
if "%search%"=="?Tutorial" goto Tutorial
if "%search%"=="?tutorial" goto Tutorial
if "%search%"=="?Tipsearch" goto Tipsearch
if "%search%"=="?tipsearch" goto Tipsearch
if "%search%"=="?Folder" goto OpenFolder
if "%search%"=="?folder" goto OpenFolder
goto Tipsearch

:CALL
cls
powershell write-host -back green -fore white Answers for %search%
powershell write-host -back blue -fore white ?Help

echo You can call other files through the call command.
echo This is a very important command.
echo How to use it?
echo Examples:
powershell write-host -back red -fore white 'call' '%USERNAME%.bat'

set /p search= 
if "%search%"=="?Help" goto help
if "%search%"=="?Menu" goto menu
if "%search%"=="?help" goto help
if "%search%"=="?menu" goto menu
if "%search%"=="?Load" goto load
if "%search%"=="?load" goto load
if "%search%"=="?Github" goto Github
if "%search%"=="?github" goto Github
if "%search%"=="?new" goto new-file
if "%search%"=="?New" goto new-file
if "%search%"=="?Export" goto export
if "%search%"=="?export" goto export
if "%search%"=="?Notepad" goto Notepad
if "%search%"=="?notepad" goto Notepad
if "%search%"=="?Tutorial" goto Tutorial
if "%search%"=="?tutorial" goto Tutorial
if "%search%"=="?Tipsearch" goto Tipsearch
if "%search%"=="?tipsearch" goto Tipsearch
if "%search%"=="?Folder" goto OpenFolder
if "%search%"=="?folder" goto OpenFolder
goto Tipsearch

:TIMEOUT
cls
powershell write-host -back green -fore white Answers for %search%
powershell write-host -back blue -fore white ?Help

echo You can cooldown/wait/timeout with this command.
echo This is a useful command.
echo How to use it?
echo Examples:
powershell write-host -back red -fore white timeout /t 5

set /p search= 
if "%search%"=="?Help" goto help
if "%search%"=="?Menu" goto menu
if "%search%"=="?help" goto help
if "%search%"=="?menu" goto menu
if "%search%"=="?Load" goto load
if "%search%"=="?load" goto load
if "%search%"=="?Github" goto Github
if "%search%"=="?github" goto Github
if "%search%"=="?new" goto new-file
if "%search%"=="?New" goto new-file
if "%search%"=="?Export" goto export
if "%search%"=="?export" goto export
if "%search%"=="?Notepad" goto Notepad
if "%search%"=="?notepad" goto Notepad
if "%search%"=="?Tutorial" goto Tutorial
if "%search%"=="?tutorial" goto Tutorial
if "%search%"=="?Tipsearch" goto Tipsearch
if "%search%"=="?tipsearch" goto Tipsearch
if "%search%"=="?Folder" goto OpenFolder
if "%search%"=="?folder" goto OpenFolder
goto Tipsearch

:EXISTS
cls
powershell write-host -back green -fore white Answers for %search%
powershell write-host -back blue -fore white ?Help

echo You can check if a folder/file exists with this command.
echo This is a very useful command used in batch and Cheese Scripting.
echo How to use it?
echo Examples:
powershell write-host -back red -fore white 'if' 'exist' '%USERPROFILE%' '('
powershell write-host -back red -fore white 	'goto' exists
powershell write-host -back red -fore white ')'else '('
powershell write-host -back red -fore white 	'goto' doesntexist
powershell write-host -back red -fore white ')'

set /p search= 
if "%search%"=="?Help" goto help
if "%search%"=="?Menu" goto menu
if "%search%"=="?help" goto help
if "%search%"=="?menu" goto menu
if "%search%"=="?Load" goto load
if "%search%"=="?load" goto load
if "%search%"=="?Github" goto Github
if "%search%"=="?github" goto Github
if "%search%"=="?new" goto new-file
if "%search%"=="?New" goto new-file
if "%search%"=="?Export" goto export
if "%search%"=="?export" goto export
if "%search%"=="?Notepad" goto Notepad
if "%search%"=="?notepad" goto Notepad
if "%search%"=="?Tutorial" goto Tutorial
if "%search%"=="?tutorial" goto Tutorial
if "%search%"=="?Tipsearch" goto Tipsearch
if "%search%"=="?tipsearch" goto Tipsearch
if "%search%"=="?Folder" goto OpenFolder
if "%search%"=="?folder" goto OpenFolder
goto Tipsearch

:ECHOOFF
cls
powershell write-host -back green -fore white Answers for '%search%'
powershell write-host -back blue -fore white ?Help

echo This command is used to clear any messy text.
echo Used at the start of almost every script.
echo How to use it?
echo Examples:
powershell write-host -back red -fore white '@echo' off

set /p search= 
if "%search%"=="?Help" goto help
if "%search%"=="?Menu" goto menu
if "%search%"=="?help" goto help
if "%search%"=="?menu" goto menu
if "%search%"=="?Load" goto load
if "%search%"=="?load" goto load
if "%search%"=="?Github" goto Github
if "%search%"=="?github" goto Github
if "%search%"=="?new" goto new-file
if "%search%"=="?New" goto new-file
if "%search%"=="?Export" goto export
if "%search%"=="?export" goto export
if "%search%"=="?Notepad" goto Notepad
if "%search%"=="?notepad" goto Notepad
if "%search%"=="?Tutorial" goto Tutorial
if "%search%"=="?tutorial" goto Tutorial
if "%search%"=="?Tipsearch" goto Tipsearch
if "%search%"=="?tipsearch" goto Tipsearch
if "%search%"=="?Folder" goto OpenFolder
if "%search%"=="?folder" goto OpenFolder
goto Tipsearch

:ECHO
cls
powershell write-host -back green -fore white Answers for '%search%'
powershell write-host -back blue -fore white ?Help

echo This command is used to say something.
echo What your reading right now is using echo.
echo Echo is used in almost every script.
echo How to use it?
echo Examples:
powershell write-host -back red -fore white 'echo' hello world!

set /p search= 
if "%search%"=="?Help" goto help
if "%search%"=="?Menu" goto menu
if "%search%"=="?help" goto help
if "%search%"=="?menu" goto menu
if "%search%"=="?Load" goto load
if "%search%"=="?load" goto load
if "%search%"=="?Github" goto Github
if "%search%"=="?github" goto Github
if "%search%"=="?new" goto new-file
if "%search%"=="?New" goto new-file
if "%search%"=="?Export" goto export
if "%search%"=="?export" goto export
if "%search%"=="?Notepad" goto Notepad
if "%search%"=="?notepad" goto Notepad
if "%search%"=="?Tutorial" goto Tutorial
if "%search%"=="?tutorial" goto Tutorial
if "%search%"=="?Tipsearch" goto Tipsearch
if "%search%"=="?tipsearch" goto Tipsearch
if "%search%"=="?Folder" goto OpenFolder
if "%search%"=="?folder" goto OpenFolder
goto Tipsearch

:STARTQUERYQUESTION
cls
powershell write-host -back green -fore white Answers for '%search%'
powershell write-host -back blue -fore white ?Help

echo This command is used to start a program of file.
echo Start is similar to call or starting URL's.
echo How to use it?
echo Examples:
powershell write-host -back red -fore white 'start' cmd

set /p search= 
if "%search%"=="?Help" goto help
if "%search%"=="?Menu" goto menu
if "%search%"=="?help" goto help
if "%search%"=="?menu" goto menu
if "%search%"=="?Load" goto load
if "%search%"=="?load" goto load
if "%search%"=="?Github" goto Github
if "%search%"=="?github" goto Github
if "%search%"=="?new" goto new-file
if "%search%"=="?New" goto new-file
if "%search%"=="?Export" goto export
if "%search%"=="?export" goto export
if "%search%"=="?Notepad" goto Notepad
if "%search%"=="?notepad" goto Notepad
if "%search%"=="?Tutorial" goto Tutorial
if "%search%"=="?tutorial" goto Tutorial
if "%search%"=="?Tipsearch" goto Tipsearch
if "%search%"=="?tipsearch" goto Tipsearch
if "%search%"=="?Folder" goto OpenFolder
if "%search%"=="?folder" goto OpenFolder
goto Tipsearch

:OPTIONSQUERYQUESTION
cls
powershell write-host -back green -fore white Answers for '%search%'
powershell write-host -back blue -fore white ?Help

echo This command is used to ask questions or set variables manually.
echo User Input is very common.
echo How to use it?
echo Examples:
powershell write-host -back red -fore white 'set' /p option=Write here:

set /p search= 
if "%search%"=="?Help" goto help
if "%search%"=="?Menu" goto menu
if "%search%"=="?help" goto help
if "%search%"=="?menu" goto menu
if "%search%"=="?Load" goto load
if "%search%"=="?load" goto load
if "%search%"=="?Github" goto Github
if "%search%"=="?github" goto Github
if "%search%"=="?new" goto new-file
if "%search%"=="?New" goto new-file
if "%search%"=="?Export" goto export
if "%search%"=="?export" goto export
if "%search%"=="?Notepad" goto Notepad
if "%search%"=="?notepad" goto Notepad
if "%search%"=="?Tutorial" goto Tutorial
if "%search%"=="?tutorial" goto Tutorial
if "%search%"=="?Tipsearch" goto Tipsearch
if "%search%"=="?tipsearch" goto Tipsearch
if "%search%"=="?Folder" goto OpenFolder
if "%search%"=="?folder" goto OpenFolder
goto Tipsearch

:LABELQUERYQUESTION
cls
powershell write-host -back green -fore white Answers for '%search%'
powershell write-host -back blue -fore white ?Help

echo This command is used to set areas/regions around your batch.
echo Labels are very common, infact most scripts start with one.
echo How to use it?
echo Examples:
powershell write-host -back red -fore white : 'Start'

set /p search= 
if "%search%"=="?Help" goto help
if "%search%"=="?Menu" goto menu
if "%search%"=="?help" goto help
if "%search%"=="?menu" goto menu
if "%search%"=="?Load" goto load
if "%search%"=="?load" goto load
if "%search%"=="?Github" goto Github
if "%search%"=="?github" goto Github
if "%search%"=="?new" goto new-file
if "%search%"=="?New" goto new-file
if "%search%"=="?Export" goto export
if "%search%"=="?export" goto export
if "%search%"=="?Notepad" goto Notepad
if "%search%"=="?notepad" goto Notepad
if "%search%"=="?Tutorial" goto Tutorial
if "%search%"=="?tutorial" goto Tutorial
if "%search%"=="?Tipsearch" goto Tipsearch
if "%search%"=="?tipsearch" goto Tipsearch
if "%search%"=="?Folder" goto OpenFolder
if "%search%"=="?folder" goto OpenFolder
goto Tipsearch

:COLORQUERYQUESTION
cls
powershell write-host -back green -fore white Answers for '%search%'
powershell write-host -back blue -fore white ?Help

echo This command is used to customize your batch file with color.
echo This file uses color and so do many others.
echo How to use it?
powershell write-host -back darkyellow -fore white Examples:
powershell write-host -back red -fore white 'color' '##'
powershell write-host -back darkyellow -fore white 'Color' Codes:
powershell write-host -back red -fore white 00: Black
powershell write-host -back red -fore white 01: Blue
powershell write-host -back red -fore white 02: Green
powershell write-host -back red -fore white 03: Aqua
powershell write-host -back red -fore white 04: Red
powershell write-host -back red -fore white 05: Purple
powershell write-host -back red -fore white 06: Yellow
powershell write-host -back red -fore white 07: White
powershell write-host -back red -fore white 08: Gray
powershell write-host -back red -fore white 09: Light Blue

set /p search= 
if "%search%"=="?Help" goto help
if "%search%"=="?Menu" goto menu
if "%search%"=="?help" goto help
if "%search%"=="?menu" goto menu
if "%search%"=="?Load" goto load
if "%search%"=="?load" goto load
if "%search%"=="?Github" goto Github
if "%search%"=="?github" goto Github
if "%search%"=="?new" goto new-file
if "%search%"=="?New" goto new-file
if "%search%"=="?Export" goto export
if "%search%"=="?export" goto export
if "%search%"=="?Notepad" goto Notepad
if "%search%"=="?notepad" goto Notepad
if "%search%"=="?Tutorial" goto Tutorial
if "%search%"=="?tutorial" goto Tutorial
if "%search%"=="?Tipsearch" goto Tipsearch
if "%search%"=="?tipsearch" goto Tipsearch
if "%search%"=="?Folder" goto OpenFolder
if "%search%"=="?folder" goto OpenFolder
goto Tipsearch

:DIRQUERYQUESTION
cls
powershell write-host -back green -fore white Answers for '%search%'
powershell write-host -back blue -fore white ?Help

echo This command is used to list all the files in a directory.
echo This file is useful.
echo How to use it?
echo Examples:
powershell write-host -back red -fore white 'dir' '%USERPROFILE%'

set /p search= 
if "%search%"=="?Help" goto help
if "%search%"=="?Menu" goto menu
if "%search%"=="?help" goto help
if "%search%"=="?menu" goto menu
if "%search%"=="?Load" goto load
if "%search%"=="?load" goto load
if "%search%"=="?Github" goto Github
if "%search%"=="?github" goto Github
if "%search%"=="?new" goto new-file
if "%search%"=="?New" goto new-file
if "%search%"=="?Export" goto export
if "%search%"=="?export" goto export
if "%search%"=="?Notepad" goto Notepad
if "%search%"=="?notepad" goto Notepad
if "%search%"=="?Tutorial" goto Tutorial
if "%search%"=="?tutorial" goto Tutorial
if "%search%"=="?Tipsearch" goto Tipsearch
if "%search%"=="?tipsearch" goto Tipsearch
if "%search%"=="?Folder" goto OpenFolder
if "%search%"=="?folder" goto OpenFolder
goto Tipsearch

:MKDIRQUERYQUESTION
cls
powershell write-host -back green -fore white Answers for '%search%'
powershell write-host -back blue -fore white ?Help

echo This command is used to create a directory.
echo This file is very useful used in this and many other batch files.
echo How to use it?
echo Examples:
powershell write-host -back red -fore white 'mkdir' '%USERPROFILE%\appdata\roaming\%USERNAME%-App\'

set /p search= 
if "%search%"=="?Help" goto help
if "%search%"=="?Menu" goto menu
if "%search%"=="?help" goto help
if "%search%"=="?menu" goto menu
if "%search%"=="?Load" goto load
if "%search%"=="?load" goto load
if "%search%"=="?Github" goto Github
if "%search%"=="?github" goto Github
if "%search%"=="?new" goto new-file
if "%search%"=="?New" goto new-file
if "%search%"=="?Export" goto export
if "%search%"=="?export" goto export
if "%search%"=="?Notepad" goto Notepad
if "%search%"=="?notepad" goto Notepad
if "%search%"=="?Tutorial" goto Tutorial
if "%search%"=="?tutorial" goto Tutorial
if "%search%"=="?Tipsearch" goto Tipsearch
if "%search%"=="?tipsearch" goto Tipsearch
if "%search%"=="?Folder" goto OpenFolder
if "%search%"=="?folder" goto OpenFolder
goto Tipsearch

:failedtipsearch
cls
powershell write-host -back red -fore white We couldnt find any answers 'for' '%search%'
powershell write-host -back blue -fore white ?Help
set /p search= 
if "%search%"=="?Help" goto help
if "%search%"=="?Menu" goto menu
if "%search%"=="?help" goto help
if "%search%"=="?menu" goto menu
if "%search%"=="?Load" goto load
if "%search%"=="?load" goto load
if "%search%"=="?Github" goto Github
if "%search%"=="?github" goto Github
if "%search%"=="?new" goto new-file
if "%search%"=="?New" goto new-file
if "%search%"=="?Export" goto export
if "%search%"=="?export" goto export
if "%search%"=="?Notepad" goto Notepad
if "%search%"=="?notepad" goto Notepad
if "%search%"=="?Tutorial" goto Tutorial
if "%search%"=="?tutorial" goto Tutorial
if "%search%"=="?Tipsearch" goto Tipsearch
if "%search%"=="?tipsearch" goto Tipsearch
if "%search%"=="?Folder" goto OpenFolder
if "%search%"=="?folder" goto OpenFolder
goto failedtipsearch

: OpenFolder
color 07
cls
start "" "C:\Users\%USERNAME%\appdata\roaming\HolyCheeseMan\CheeseScripting\Projects\"
powershell write-host -back red -fore white Opening Projects Folder.
powershell write-host -back blue -fore white ?Help
set /p commands= 
if "%commands%"=="?Help" goto help
if "%commands%"=="?Menu" goto menu
if "%commands%"=="?help" goto help
if "%commands%"=="?menu" goto menu
if "%commands%"=="?Load" goto load
if "%commands%"=="?load" goto load
if "%commands%"=="?Github" goto Github
if "%commands%"=="?github" goto Github
if "%commands%"=="?new" goto new-file
if "%commands%"=="?New" goto new-file
if "%commands%"=="?Export" goto export
if "%commands%"=="?export" goto export
if "%commands%"=="?Notepad" goto Notepad
if "%commands%"=="?notepad" goto Notepad
if "%commands%"=="?Tutorial" goto Tutorial
if "%commands%"=="?tutorial" goto Tutorial
if "%commands%"=="?Tipsearch" goto Tipsearch
if "%commands%"=="?tipsearch" goto Tipsearch
if "%commands%"=="?Folder" goto OpenFolder
if "%commands%"=="?folder" goto OpenFolder
goto OpenFolder

endlocal

: crash
cls
powershell write-host -back darkred -fore white "Error has occured when loading the script"
powershell write-host -back darkred -fore white "Please restart the program manually or restart by using ?Restart"
powershell write-host -fore white  
powershell write-host -back darkblue -fore white "'If' problem continues than reinstall or message on Github."
powershell write-host -back blue -fore white "?Restart"
set /p commands= 
if "%commands%"=="?Restart" goto startscriptinstall
if "%commands%"=="?restart" goto startscriptinstall
goto crash