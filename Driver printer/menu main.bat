@echo off
chcp 1251 >nul
title Установщик драйвера
color 0A

:: Менюшка, дописывать драйвера самостоятельно!
:menu
cls
echo ================================
echo     Драйвера для принтеров
echo ================================
echo.
echo     1. Kyocera TWAIN Driver
echo.
echo     0. Выход
echo.
echo ================================
echo.

:: Выбор пункта 
set /p choice="Выберите: "

:: Сам пункт и открытие программы, дописывать, если появился драйвер
if "%choice%"=="0" exit

if "%choice%"=="1" (
start "" ".\Driver\Kyosera Twain\Kyocera TWAIN Driver_2.1.2822_1.4rc9.exe"
echo Давай установи меня!
pause
goto menu
)

:: Если выбрал что-то другое или 0, добавлять if not, при добавлении драйверов 
if not "%choice%"=="0" (
    if not "%choice%"=="1" (
	echo.
        echo АААААА НИЧЕГО НЕТ!
	echo.
        pause
        goto menu
    )
)