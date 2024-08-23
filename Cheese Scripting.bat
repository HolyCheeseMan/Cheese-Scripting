goto menu



By Holy Cheese Man.
Thanks For Using.
C:

Plan - Tutorial



: menu
mkdir "C:\Users\%USERNAME%\appdata\roaming\HolyCheeseMan\CheeseScripting\Projects\"
set Projects=C:\Users\%USERNAME%\appdata\roaming\HolyCheeseMan\CheeseScripting\Projects\
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
powershell write-host -back red -fore white Version 0.0.1 Holy Cheese Man
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

: createdscript
	cls
	echo : start>"%scriptPath%"
	cls
	powershell write-host -back green -fore white "Created File, load it to edit."
	powershell write-host -back blue -fore white "?Help"
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
powershell write-host -back green -fore white Write file name in project folder: Project.bat
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
if "%filenameload%"=="?Export" goto export
if "%filenameload%"=="?export" goto export
set scriptPath=%Projects%\%filenameload%
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
: check-fileload
cls
if exist "%scriptPath%" (
	cls
	powershell write-host -back blue -fore white "Commands can still be used. Script:"
    for /f "usebackq delims=" %%a in ("%scriptPath%") do (
        echo %%a
    )
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
@echo %code%>>"%scriptPath%"
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
goto filedoesntexist

: crash
exit