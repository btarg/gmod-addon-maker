@echo off
title GMA Updater Batch Tool
cls
echo ------------------------------------------
echo iCrazyBlaze's Garry's Mod Addon Updater
echo ------------------------------------------
echo.
color C
echo Notice - It's recommended that you run this file from the Garry's Mod bin folder. If you want to run it somewhere else, copy "gmpublish.exe" and "steam_api.dll" into the same directory as this file.
echo You can only upload .GMA files; other filetypes are not supported!! 
echo.
echo Press any key to continue...
echo.
echo.
pause >nul

:main
color 7
cls
echo ------------------------------------------
echo iCrazyBlaze's Garry's Mod Addon Updater
echo ------------------------------------------
echo.
set /p input1=GMA File to update: 
set /p input2=Workshop ID: 
set /p input3=Changes description: 
echo.

IF EXIST "gmpublish.exe" goto exists
IF NOT EXIST "gmpublish.exe" goto nope

:exists
echo ==GMPUBLISH START==
echo.
gmpublish.exe update -addon %input1% -id %input2% -changes %input3%
echo.
echo ==GMPUBLISH END==
echo.
pause
exit

:nope
color C
echo ERROR: "gmpublish.exe" is missing!
echo.
pause
exit
