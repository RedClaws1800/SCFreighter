echo off
cls
title SC Freight v0.1
set correctconf=1
set run1ploc=NONE
set run1type=NONE
set run1dloc=NONE
set run2ploc=NONE
set run2type=NONE
set run2dloc=NONE
set run3ploc=NONE
set run3type=NONE
set run3dloc=NONE
set run4ploc=NONE
set run4type=NONE
set run4dloc=NONE
set run5ploc=NONE
set run5type=NONE
set run5dloc=NONE
set run6ploc=NONE
set run6type=NONE
set run6dloc=NONE
set run7ploc=NONE
set run7type=NONE
set run7dloc=NONE
set run8ploc=NONE
set run8type=NONE
set run8dloc=NONE
set run9ploc=NONE
set run9type=NONE
set run9dloc=NONE
set run10ploc=NONE
set run10type=NONE
set run10dloc=NONE
goto MENU

::welcome screen
:MENU
cls
echo Menu
echo welcome to the star citizen ship calculator v0.1 (Created By Red_Claws with 1,200 Lines Of Code)
echo please choose a menu open
echo.
echo menu
::asking for selection of oporation
echo 1=Start
echo 2=Settings
echo 3=Go To Viewer
echo.
::Ships 3=Settings (DEBUG 4 user input, 5 Set All Values to Test, 6 go to dash
set /p number=Responce:


if "%number%"=="1" (
    goto START
) else if "%number%"=="2" (
    goto SETTINGS
) else if "%number%"=="3" (
    goto VIEW
::) else if "%number%"=="4" (
::    goto RUN1PLOC
::) else if "%number%"=="5" (
::    goto DEBUG1
::) else if "%number%"=="6" (
::    goto VIEW
::) else if "%number%"=="7" (
::    goto SETTINGS
) else (
    echo Invalid Responce: %number%
	timeout /t 1 /nobreak >nul
	goto MENU
)




::Settings
:SETTINGS
cls
echo Settings
echo 0=Return
echo 1=Color
echo 2=Correct Conformation
echo 3=Debugger
echo.
set /p number=Responce:


if "%number%"=="0" (
    goto MENU
) else if "%number%"=="1" (
    goto COLOR
) else if "%number%"=="2" (
    goto CORRECTCONF
) else if "%number%"=="3" (
    goto DEBUGGER
) else (
    echo Invalid Responce: %number%
	timeout /t 1 /nobreak >nul
	goto SETTINGS
)
:DEBUGGER
cls
echo Debugger
echo 0=Return
echo 1=Set All To "BURGER"
echo 2=RESET ALL
echo.

set /p bugger=Response:
if "%bugger%"=="0" goto SETTINGS
if "%bugger%"=="1" goto DEBUG1
if "%bugger%"=="2" goto DEBUG2
echo Invalid Response %bugger%
timeout /t 1 /nobreak >nul
goto DEBUGGER


:CORRECTCONF
cls
echo Confirmation is currently %correctconf%
set /p correctconf=Selection (0 = disabled, 1 = enabled):
if /i "%correctconf%"=="1" goto SETTINGS
if /i "%correctconf%"=="0" goto SETTINGS
echo Invalid Response %correctconf%
timeout /t 1 /nobreak >nul
goto CORRECTCONF

:COLOR
cls
echo Pick A Background Color (note: Does Not Save :( 
echo.
echo Backgrounds
echo 0=Return
echo 1=Black
echo 2=Green
echo 3=Purple
echo 4=Gray
echo 5=Blue
echo 6=Lime
echo 7=Red
echo 8=Yellow
echo 9=White
echo.
set /p color1=Responce:


if "%color1%"=="1" (
    set color1=0
) else if "%color1%"=="2" (
    set color1=2
) else if "%color1%"=="3" (
    set color1=5
) else if "%color1%"=="4" (
    set color1=8
) else if "%color1%"=="5" (
    set color1=9
) else if "%color1%"=="6" (
    set color1=A
) else if "%color1%"=="7" (
    set color1=C
) else if "%color1%"=="8" (
    set color1=E
) else if "%color1%"=="9" (
    set color1=F
) else if "%color1%"=="0" (
    goto SETTINGS
) else (
    echo Invalid Responce: %color1%
	timeout /t 1 /nobreak >nul
	goto COLOR
)
:COLOR2
cls
echo Text Color
echo 0=Return
echo 1=Black
echo 2=Green
echo 3=Purple
echo 4=Gray
echo 5=Blue
echo 6=Lime
echo 7=Red
echo 8=Yellow
echo 9=White
echo.
set /p color2=Text Color:


if "%color2%"=="1" (
    set color2=0
) else if "%color2%"=="2" (
    set color2=2
) else if "%color2%"=="3" (
    set color2=5
) else if "%color2%"=="4" (
    set color2=8
) else if "%color2%"=="5" (
    set color2=9
) else if "%color2%"=="6" (
    set color2=A
) else if "%color2%"=="7" (
    set color2=C
) else if "%color2%"=="8" (
    set color2=E
) else if "%color2%"=="9" (
    set color2=F
) else if "%color2%"=="0" (
    goto SETTINGS
) else (
    echo Invalid number: %color2%
	timeout /t 1 /nobreak >nul
	goto COLOR2
)

set colorCode=%color1%%color2%
color %colorCode%
goto MENU



:START
::asking for which ship is being used
cls
echo Please Select Number Of Shipments (max 10)

set /p item=Number:
if "%item%"=="1" goto PROG
if "%item%"=="2" goto PROG
if "%item%"=="3" goto PROG
if "%item%"=="4" goto PROG
if "%item%"=="5" goto PROG
if "%item%"=="6" goto PROG
if "%item%"=="7" goto PROG
if "%item%"=="8" goto PROG
if "%item%"=="9" goto PROG
if "%item%"=="10" goto PROG
echo Invalid Response
timeout /t 1 /nobreak >nul
	goto START

::checks if this run is within the ammount the users wants
if %item% LSS 1 goto VIEW
:PROG
:SEEK1
:RUN1PLOC
::asking for pickup location
cls
echo 1ST
echo Please List The Pickup Location
set /p run1ploc=Location:

:: Correct Screen?
::Skipper
if "%correctconf%"=="0" (
    goto RUN1TYPE
)
:JUMP11
cls
echo IS %run1ploc% CORRECT? (y) Yes (n) No
::keep these veriables the same execpt goto
set /p correct=?:

if "%correct%"=="y" (
    goto RUN1TYPE
) else if "%correct%"=="n" (
    goto RUN1PLOC
) else (
    echo Invalid Responce: %correct%
	timeout /t 1 /nobreak >nul
	goto JUMP11
)
::keep these veriables the same execpt goto

:RUN1TYPE
::asking item type
cls
echo 1ST
echo Please list The Item Type
set /p run1type=Type:

::correct screen
::Skipper
if "%correctconf%"=="0" (
    goto RUN1DLOC
)
:JUMP12
cls
echo IS %run1type% CORRECT? (y) Yes (n) No 

::keep these veriables the same execpt goto
set /p correct=?:

if "%correct%"=="y" (
    goto RUN1DLOC
) else if "%correct%"=="n" (
    goto RUN1TYPE
) else (
    echo Invalid Responce: %correct%
	timeout /t 1 /nobreak >nul
	goto JUMP12
)
::keep these veriables the same execpt goto

:RUN1DLOC
::asking item drop off location
cls
echo 1ST
echo Please List The Drop Off Location
set /p  run1dloc=Location:

:: Correct Screen?
::Skipper
if "%correctconf%"=="0" (
    goto SEEK1
)
:JUMP13
cls
echo IS %run1dloc% CORRECT? (y) Yes (n) No 

::keep these veriables the same execpt goto
set /p correct=?:

if "%correct%"=="y" (
    goto SEEK1
) else if "%correct%"=="n" (
    goto RUN1DLOC
) else (
    echo Invalid Responce: %correct%
	timeout /t 1 /nobreak >nul
	goto JUMP13
)
::keep these veriables the same execpt goto
:SEEK1
::is seeking?
if "%activeseek%"=="1" (
    goto VIEW
) else if "%activeseek%"=="0" (
    goto RUN2DLOC
)

::checks if this run is within the ammount the users wants
if %item% LSS 2 goto VIEW

:RUN2PLOC
::asking for pickup location
cls
echo 2NT
echo Please List The Pickup Location
set /p run2ploc=Location:

:: Correct Screen?
::Skipper
if "%correctconf%"=="0" (
    goto RUN2TYPE
)
:JUMP21
cls
echo IS %run2ploc% CORRECT? (y) Yes (n) No 

::keep these veriables the same execpt goto
set /p correct=?:

if "%correct%"=="y" (
    goto RUN2TYPE
) else if "%correct%"=="n" (
    goto RUN2PLOC
) else (
    echo Invalid Responce: %correct%
	timeout /t 1 /nobreak >nul
	goto JUMP21
)
::keep these veriables the same execpt goto

:RUN2TYPE
::asking item type
cls
echo 2NT
echo Please list The Item Type
set /p run2type=Type:

::correct screen
::Skipper
if "%correctconf%"=="0" (
    goto RUN2DLOC
)
:JUMP22
cls
echo IS %run2type% CORRECT? (y) Yes (n) No 

::keep these veriables the same execpt goto
set /p correct=?:

if "%correct%"=="y" (
    goto RUN2DLOC
) else if "%correct%"=="n" (
    goto RUN2TYPE
) else (
    echo Invalid Responce: %correct%
	timeout /t 1 /nobreak >nul
	goto JUMP22
)
::keep these veriables the same execpt goto


:RUN2DLOC
::asking item drop off location
cls
echo 2NT
echo Please List The Drop Off Location
set /p  run2dloc=Location:

:: Correct Screen?
::Skipper
if "%correctconf%"=="0" (
    goto SEEK2
)
:JUMP23
cls
echo IS %run2dloc% CORRECT? (y) Yes (n) No 

::keep these veriables the same execpt goto
set /p correct=?:

if "%correct%"=="y" (
    goto SEEK2
) else if "%correct%"=="n" (
    goto RUN2DLOC
) else (
    echo Invalid Responce: %correct%
	timeout /t 1 /nobreak >nul
	goto JUMP23
)
::keep these veriables the same execpt goto
:SEEK2
::is seeking?
if "%activeseek%"=="1" (
    goto VIEW
) else if "%activeseek%"=="0" (
    goto RUN3DLOC
)

::checks if this run is within the ammount the users wants
if %item% LSS 3 goto VIEW

:RUN3PLOC
::asking for pickup location
cls
echo 3RD
echo Please List The Pickup Location
set /p run3ploc=Location:

:: Correct Screen?
::Skipper
if "%correctconf%"=="0" (
    goto RUN3TYPE
)
:JUMP31
cls
echo IS %run3ploc% CORRECT? (y) Yes (n) No 

::keep these veriables the same execpt goto
set /p correct=?:

if "%correct%"=="y" (
    goto RUN3TYPE
) else if "%correct%"=="n" (
    goto RUN3PLOC
) else (
    echo Invalid Responce: %correct%
	timeout /t 1 /nobreak >nul
	goto JUMP31
)
::keep these veriables the same execpt goto

:RUN3TYPE
::asking item type
cls
echo 3RD
echo Please list The Item Type
set /p run3type=Type:

::correct screen
::Skipper
if "%correctconf%"=="0" (
    goto RUN3DLOC
)
:JUMP32
cls
echo IS %run3type% CORRECT? (y) Yes (n) No 

::keep these veriables the same execpt goto
set /p correct=?:

if "%correct%"=="y" (
    goto RUN3DLOC
) else if "%correct%"=="n" (
    goto RUN3TYPE
) else (
    echo Invalid Responce: %correct%
	timeout /t 1 /nobreak >nul
	goto JUMP32
)
::keep these veriables the same execpt goto


:RUN3DLOC
::asking item drop off location
cls
echo 3RD
echo Please List The Drop Off Location
set /p  run3dloc=Location:

:: Correct Screen?
::Skipper
if "%correctconf%"=="0" (
    goto SEEK3
)
:JUMP33
cls
echo IS %run3dloc% CORRECT? (y) Yes (n) No 

::keep these veriables the same execpt goto
set /p correct=?:

if "%correct%"=="y" (
    goto SEEK3
) else if "%correct%"=="n" (
    goto RUN3DLOC
) else (
    echo Invalid Responce: %correct%
	timeout /t 1 /nobreak >nul
	goto JUMP33
)
::keep these veriables the same execpt goto
:SEEK3
::is seeking?
if "%activeseek%"=="1" (
    goto VIEW
) else if "%activeseek%"=="0" (
    goto RUN4DLOC
)

::checks if this run is within the ammount the users wants
if %item% LSS 4 goto VIEW

:RUN4PLOC
::asking for pickup location
cls
echo 4TH
echo Please List The Pickup Location
set /p run4ploc=Location:

:: Correct Screen?
::Skipper
if "%correctconf%"=="0" (
    goto RUN4TYPE
)
:JUMP41
cls
echo IS %run4ploc% CORRECT? (y) Yes (n) No 

::keep these veriables the same execpt goto
set /p correct=?:

if "%correct%"=="y" (
    goto RUN4TYPE
) else if "%correct%"=="n" (
    goto RUN4PLOC
) else (
    echo Invalid Responce: %correct%
	timeout /t 1 /nobreak >nul
	goto JUMP41
)
::keep these veriables the same execpt goto

:RUN4TYPE
::asking item type
cls
echo 4TH
echo Please list The Item Type
set /p run4type=Type:

::correct screen
::Skipper
if "%correctconf%"=="0" (
    goto RUN4DLOC
)
:JUMP42
cls
echo IS %run4type% CORRECT? (y) Yes (n) No 

::keep these veriables the same execpt goto
set /p correct=?:

if "%correct%"=="y" (
    goto RUN4DLOC
) else if "%correct%"=="n" (
    goto RUN4TYPE
) else (
    echo Invalid Responce: %correct%
	timeout /t 1 /nobreak >nul
	goto JUMP42
)
::keep these veriables the same execpt goto


:RUN4DLOC
::asking item drop off location
cls
echo 4TH
echo Please List The Drop Off Location
set /p  run4dloc=Location:

:: Correct Screen?
::Skipper
if "%correctconf%"=="0" (
    goto SEEK4
)
:JUMP43
cls
echo IS %run4dloc% CORRECT? (y) Yes (n) No 

::keep these veriables the same execpt goto
set /p correct=?:

if "%correct%"=="y" (
    goto SEEK4
) else if "%correct%"=="n" (
    goto RUN4DLOC
) else (
    echo Invalid Responce: %correct%
	timeout /t 1 /nobreak >nul
	goto JUMP43
)
::keep these veriables the same execpt goto
:SEEK4
::is seeking?
if "%activeseek%"=="1" (
    goto VIEW
) else if "%activeseek%"=="0" (
    goto RUN5DLOC
)

::checks if this run is within the ammount the users wants
if %item% LSS 5 goto VIEW

:RUN5PLOC
::asking for pickup location
cls
echo 5TH
echo Please List The Pickup Location
set /p run5ploc=Location:

:: Correct Screen?
::Skipper
if "%correctconf%"=="0" (
    goto RUN5TYPE
)
:JUMP51
cls
echo IS %run5ploc% CORRECT? (y) Yes (n) No 

::keep these veriables the same execpt goto
set /p correct=?:

if "%correct%"=="y" (
    goto RUN5TYPE
) else if "%correct%"=="n" (
    goto RUN5PLOC
) else (
    echo Invalid Responce: %correct%
	timeout /t 1 /nobreak >nul
	goto JUMP51
)
::keep these veriables the same execpt goto

:RUN5TYPE
::asking item type
cls
echo 5TH
echo Please list The Item Type
set /p run5type=Type:

::correct screen
::Skipper
if "%correctconf%"=="0" (
    goto RUN5DLOC
)
:JUMP52
cls
echo IS %run5type% CORRECT? (y) Yes (n) No 

::keep these veriables the same execpt goto
set /p correct=?:

if "%correct%"=="y" (
    goto RUN5DLOC
) else if "%correct%"=="n" (
    goto RUN5TYPE
) else (
    echo Invalid Responce: %correct%
	timeout /t 1 /nobreak >nul
	goto JUMP52
)
::keep these veriables the same execpt goto


:RUN5DLOC
::asking item drop off location
cls
echo 5TH
echo Please List The Drop Off Location
set /p  run5dloc=Location:

:: Correct Screen?
::Skipper
if "%correctconf%"=="0" (
    goto SEEK5
)
:JUMP53
cls
echo IS %run5dloc% CORRECT? (y) Yes (n) No 

::keep these veriables the same execpt goto
set /p correct=?:

if "%correct%"=="y" (
    goto SEEK5
) else if "%correct%"=="n" (
    goto RUN5DLOC
) else (
    echo Invalid Responce: %correct%
	timeout /t 1 /nobreak >nul
	goto JUMP53
)
::keep these veriables the same execpt goto
:SEEK5
::is seeking?
if "%activeseek%"=="1" (
    goto VIEW
) else if "%activeseek%"=="0" (
    goto RUN6DLOC
)

::checks if this run is within the ammount the users wants
if %item% LSS 6 goto VIEW

:RUN6PLOC
::asking for pickup location
cls
echo 6TH
echo Please List The Pickup Location
set /p run6ploc=Location:

:: Correct Screen?
::Skipper
if "%correctconf%"=="0" (
    goto RUN6TYPE
)
:JUMP61
cls
echo IS %run6ploc% CORRECT? (y) Yes (n) No 

::keep these veriables the same execpt goto
set /p correct=?:

if "%correct%"=="y" (
    goto RUN6TYPE
) else if "%correct%"=="n" (
    goto RUN6PLOC
) else (
    echo Invalid Responce: %correct%
	timeout /t 1 /nobreak >nul
	goto JUMP61
)
::keep these veriables the same execpt goto

:RUN6TYPE
::asking item type
cls
echo 6TH
echo Please list The Item Type
set /p run6type=Type:

::correct screen
::Skipper
if "%correctconf%"=="0" (
    goto RUN6DLOC
)
:JUMP62
cls
echo IS %run6type% CORRECT? (y) Yes (n) No 

::keep these veriables the same execpt goto
set /p correct=?:

if "%correct%"=="y" (
    goto RUN6DLOC
) else if "%correct%"=="n" (
    goto RUN6TYPE
) else (
    echo Invalid Responce: %correct%
	timeout /t 1 /nobreak >nul
	goto JUMP62
)
::keep these veriables the same execpt goto


:RUN6DLOC
::asking item drop off location
cls
echo 6TH
echo Please List The Drop Off Location
set /p  run6dloc=Location:

:: Correct Screen?
::Skipper
if "%correctconf%"=="0" (
    goto SEEK6
)
:JUMP63
cls
echo IS %run6dloc% CORRECT? (y) Yes (n) No 

::keep these veriables the same execpt goto
set /p correct=?:

if "%correct%"=="y" (
    goto SEEK6
) else if "%correct%"=="n" (
    goto RUN6DLOC
) else (
    echo Invalid Responce: %correct%
	timeout /t 1 /nobreak >nul
	goto JUMP63
)
::keep these veriables the same execpt goto
:SEEK6
::is seeking?
if "%activeseek%"=="1" (
    goto VIEW
) else if "%activeseek%"=="0" (
    goto RUN7DLOC
)

::checks if this run is within the ammount the users wants
if %item% LSS 7 goto VIEW

:RUN7PLOC
::asking for pickup location
cls
echo 7TH
echo Please List The Pickup Location
set /p run7ploc=Location:

:: Correct Screen?
::Skipper
if "%correctconf%"=="0" (
    goto RUN7TYPE
)
:JUMP71
cls
echo IS %run7ploc% CORRECT? (y) Yes (n) No 

::keep these veriables the same execpt goto
set /p correct=?:

if "%correct%"=="y" (
    goto RUN7TYPE
) else if "%correct%"=="n" (
    goto RUN7PLOC
) else (
    echo Invalid Responce: %correct%
	timeout /t 1 /nobreak >nul
	goto JUMP71
)
::keep these veriables the same execpt goto

:RUN7TYPE
::asking item type
cls
echo 7TH
echo Please list The Item Type
set /p run7type=Type:

::correct screen
::Skipper
if "%correctconf%"=="0" (
    goto RUN7DLOC
)
:JUMP72
cls
echo IS %run7type% CORRECT? (y) Yes (n) No 

::keep these veriables the same execpt goto
set /p correct=?:

if "%correct%"=="y" (
    goto RUN7DLOC
) else if "%correct%"=="n" (
    goto RUN7TYPE
) else (
    echo Invalid Responce: %correct%
	timeout /t 1 /nobreak >nul
	goto JUMP72
)
::keep these veriables the same execpt goto


:RUN7DLOC
::asking item drop off location
cls
echo 7TH
echo Please List The Drop Off Location
set /p  run7dloc=Location:

:: Correct Screen?
::Skipper
if "%correctconf%"=="0" (
    goto SEEK7
)
:JUMP73
cls
echo IS %run7dloc% CORRECT? (y) Yes (n) No 

::keep these veriables the same execpt goto
set /p correct=?:

if "%correct%"=="y" (
    goto SEEK7
) else if "%correct%"=="n" (
    goto RUN7DLOC
) else (
    echo Invalid Responce: %correct%
	timeout /t 1 /nobreak >nul
	goto JUMP73
)
::keep these veriables the same execpt goto
:SEEK7
::is seeking?
if "%activeseek%"=="1" (
    goto VIEW
) else if "%activeseek%"=="0" (
    goto RUN8DLOC
)

::checks if this run is within the ammount the users wants
if %item% LSS 8 goto VIEW

:RUN8PLOC
::asking for pickup location
cls
echo 8TH
echo Please List The Pickup Location
set /p run8ploc=Location:

:: Correct Screen?
::Skipper
if "%correctconf%"=="0" (
    goto RUN8TYPE
)
:JUMP81
cls
echo IS %run8ploc% CORRECT? (y) Yes (n) No 

::keep these veriables the same execpt goto
set /p correct=?:

if "%correct%"=="y" (
    goto RUN8TYPE
) else if "%correct%"=="n" (
    goto RUN8PLOC
) else (
    echo Invalid Responce: %correct%
	timeout /t 1 /nobreak >nul
	goto JUMP81
)
::keep these veriables the same execpt goto

:RUN8TYPE
::asking item type
cls
echo 8TH
echo Please list The Item Type
set /p run8type=Type:

::correct screen
::Skipper
if "%correctconf%"=="0" (
    goto RUN8DLOC
)
:JUMP82
cls
echo IS %run8type% CORRECT? (y) Yes (n) No 

::keep these veriables the same execpt goto
set /p correct=?:

if "%correct%"=="y" (
    goto RUN8DLOC
) else if "%correct%"=="n" (
    goto RUN8TYPE
) else (
    echo Invalid Responce: %correct%
	timeout /t 1 /nobreak >nul
	goto JUMP82
)
::keep these veriables the same execpt goto


:RUN8DLOC
::asking item drop off location
cls
echo 8TH
echo Please List The Drop Off Location
set /p  run8dloc=Location:

:: Correct Screen?
::Skipper
if "%correctconf%"=="0" (
    goto SEEK8
)
:JUMP83
cls
echo IS %run8dloc% CORRECT? (y) Yes (n) No 

::keep these veriables the same execpt goto
set /p correct=?:

if "%correct%"=="y" (
    goto SEEK8
) else if "%correct%"=="n" (
    goto RUN8DLOC
) else (
    echo Invalid Responce: %correct%
	timeout /t 1 /nobreak >nul
	goto JUMP83
)
::keep these veriables the same execpt goto
:SEEK8
::is seeking?
if "%activeseek%"=="1" (
    goto VIEW
) else if "%activeseek%"=="0" (
    goto RUN9DLOC
)

::checks if this run is within the ammount the users wants
if %item% LSS 9 goto VIEW

:RUN9PLOC
::asking for pickup location
cls
echo 9TH
echo Please List The Pickup Location
set /p run9ploc=Location:

:: Correct Screen?
::Skipper
if "%correctconf%"=="0" (
    goto RUN9TYPE
)
:JUMP91
cls
echo IS %run9ploc% CORRECT? (y) Yes (n) No 

::keep these veriables the same execpt goto
set /p correct=?:

if "%correct%"=="y" (
    goto RUN9TYPE
) else if "%correct%"=="n" (
    goto RUN9PLOC
) else (
    echo Invalid Responce: %correct%
	timeout /t 1 /nobreak >nul
	goto JUMP91
)
::keep these veriables the same execpt goto

:RUN9TYPE
::asking item type
cls
echo 9TH
echo Please list The Item Type
set /p run9type=Type:

::correct screen
::Skipper
if "%correctconf%"=="0" (
    goto RUN9DLOC
)
:JUMP92
cls
echo IS %run9type% CORRECT? (y) Yes (n) No 

::keep these veriables the same execpt goto
set /p correct=?:

if "%correct%"=="y" (
    goto RUN9DLOC
) else if "%correct%"=="n" (
    goto RUN9TYPE
) else (
    echo Invalid Responce: %correct%
	timeout /t 1 /nobreak >nul
	goto JUMP92
)
::keep these veriables the same execpt goto


:RUN9DLOC
::asking item drop off location
cls
echo 9TH
echo Please List The Drop Off Location
set /p  run9dloc=Location:

:: Correct Screen?
::Skipper
if "%correctconf%"=="0" (
    goto SEEK9
)
:JUMP93
cls
echo IS %run9dloc% CORRECT? (y) Yes (n) No 

::keep these veriables the same execpt goto
set /p correct=?:

if "%correct%"=="y" (
    goto SEEK9
) else if "%correct%"=="n" (
    goto RUN9DLOC
) else (
    echo Invalid Responce: %correct%
	timeout /t 1 /nobreak >nul
	goto JUMP93
)
::keep these veriables the same execpt goto
:SEEK9
::is seeking?
if "%activeseek%"=="1" (
    goto VIEW
) else if "%activeseek%"=="0" (
    goto RUN10DLOC
)

::checks if this run is within the ammount the users wants
if %item% LSS 10 goto VIEW

:RUN10PLOC
::asking for pickup location
cls
echo 10TH
echo Please List The Pickup Location
set /p run10ploc=Location:

:: Correct Screen?
::Skipper
if "%correctconf%"=="0" (
    goto RUN10TYPE
)
:JUMP101
cls
echo IS %run10ploc% CORRECT? (y) Yes (n) No 

::keep these veriables the same execpt goto
set /p correct=?:

if "%correct%"=="y" (
    goto RUN10TYPE
) else if "%correct%"=="n" (
    goto RUN10PLOC
) else (
    echo Invalid Responce: %correct%
	timeout /t 1 /nobreak >nul
	goto JUMP101
)
::keep these veriables the same execpt goto

:RUN10TYPE
::asking item type
cls
echo 10TH
echo Please list The Item Type
set /p run10type=Type:

::correct screen
::Skipper
if "%correctconf%"=="0" (
    goto RUN10DLOC
)
:JUMP102
cls
echo IS %run10type% CORRECT? (y) Yes (n) No 

::keep these veriables the same execpt goto
set /p correct=?:

if "%correct%"=="y" (
    goto RUN10DLOC
) else if "%correct%"=="n" (
    goto RUN10TYPE
) else (
    echo Invalid Responce: %correct%
	timeout /t 1 /nobreak >nul
	goto JUMP102
)
::keep these veriables the same execpt goto


:RUN10DLOC
::asking item drop off location
cls
echo 10TH
echo Please List The Drop Off Location
set /p  run10dloc=Location:

:: Correct Screen?
::Skipper
if "%correctconf%"=="0" (
    goto SEEK10
)
:JUMP103
cls
echo IS %run10dloc% CORRECT? (y) Yes (n) No 

::keep these veriables the same execpt goto
set /p correct=?:

if "%correct%"=="y" (
    goto SEEK10
) else if "%correct%"=="n" (
    goto RUN10DLOC
) else (
    echo Invalid Responce: %correct%
	timeout /t 1 /nobreak >nul
	goto JUMP103
)
::keep these veriables the same execpt goto
:SEEK10
::is seeking?
if "%activeseek%"=="1" (
    goto VIEW
) else if "%activeseek%"=="0" (
    goto VIEW
)



::End of PROG


::Viewer
:VIEW
::START OF MADE BY CHAT GPT
cls
:: Show legend (column headers)
echo PICKUP LOCATION         ITEM TYPE              DROP OFF LOCATION       
echo ---------------------------------------------------------------
setlocal enabledelayedexpansion

:: Show each row with fixed-width fields
call :PadRight "%run1ploc%" 22 col1
call :PadRight "%run1type%" 22 col2
call :PadRight "%run1dloc%" 22 col3
echo !col1!!col2!!col3!

call :PadRight "%run2ploc%" 22 col1
call :PadRight "%run2type%" 22 col2
call :PadRight "%run2dloc%" 22 col3
echo !col1!!col2!!col3!

call :PadRight "%run3ploc%" 22 col1
call :PadRight "%run3type%" 22 col2
call :PadRight "%run3dloc%" 22 col3
echo !col1!!col2!!col3!

call :PadRight "%run4ploc%" 22 col1
call :PadRight "%run4type%" 22 col2
call :PadRight "%run4dloc%" 22 col3
echo !col1!!col2!!col3!

call :PadRight "%run5ploc%" 22 col1
call :PadRight "%run5type%" 22 col2
call :PadRight "%run5dloc%" 22 col3
echo !col1!!col2!!col3!

call :PadRight "%run6ploc%" 22 col1
call :PadRight "%run6type%" 22 col2
call :PadRight "%run6dloc%" 22 col3
echo !col1!!col2!!col3!

call :PadRight "%run7ploc%" 22 col1
call :PadRight "%run7type%" 22 col2
call :PadRight "%run7dloc%" 22 col3
echo !col1!!col2!!col3!

call :PadRight "%run8ploc%" 22 col1
call :PadRight "%run8type%" 22 col2
call :PadRight "%run8dloc%" 22 col3
echo !col1!!col2!!col3!

call :PadRight "%run9ploc%" 22 col1
call :PadRight "%run9type%" 22 col2
call :PadRight "%run9dloc%" 22 col3
echo !col1!!col2!!col3!

call :PadRight "%run10ploc%" 22 col1
call :PadRight "%run10type%" 22 col2
call :PadRight "%run10dloc%" 22 col3
echo !col1!!col2!!col3!
::END OF MADE BY CHAT GPT

echo ---------------------------------------------------------------
echo.
echo 0=Menu
echo 1=Reload Viewer
echo 2=Edit Item
echo.
set /p seeker=Response: 

:: selection system
if "%seeker%"=="1" goto VIEW
if "%seeker%"=="2" goto SEEKERFINDER
if "%seeker%"=="0" goto MENU

echo Invalid Response
timeout /t 1 /nobreak >nul
goto VIEW



:: Seeker Finder
:SEEKERFINDER
set activeseek=1
cls
echo Seeker
echo Which do you want to edit?
echo 0=Return
echo 1=%run1type%
echo 2=%run2type%
echo 3=%run3type%
echo 4=%run4type%
echo 5=%run5type%
echo 6=%run6type%
echo 7=%run7type%
echo 8=%run8type%
echo 9=%run9type%
echo 10=%run10type%
echo.

set /p seekersel=Response: 

if "%seekersel%"=="0" (
    goto VIEW
) else if "%seekersel%"=="1" (
    goto RUN1PLOC
) else if "%seekersel%"=="2" (
    goto RUN2PLOC
) else if "%seekersel%"=="3" (
    goto RUN3PLOC
) else if "%seekersel%"=="4" (
    goto RUN4PLOC
) else if "%seekersel%"=="5" (
    goto RUN5PLOC
) else if "%seekersel%"=="6" (
    goto RUN6PLOC
) else if "%seekersel%"=="7" (
    goto RUN7PLOC
) else if "%seekersel%"=="8" (
    goto RUN8PLOC
) else if "%seekersel%"=="9" (
    goto RUN9PLOC
) else if "%seekersel%"=="10" (
    goto RUN10PLOC
) else (
    echo Invalid Response: %seekersel%
	timeout /t 1 /nobreak >nul
    goto SEEKERFINDER
)











:: DEBUG

:DEBUG1
set run1ploc=BURGER
set run1type=BURGER
set run1dloc=BURGER
set run2ploc=BURGER
set run2type=BURGER
set run2dloc=BURGER
set run3ploc=BURGER
set run3type=BURGER
set run3dloc=BURGER
set run4ploc=BURGER
set run4type=BURGER
set run4dloc=BURGER
set run5ploc=BURGER
set run5type=BURGER
set run5dloc=BURGER
set run6ploc=BURGER
set run6type=BURGER
set run6dloc=BURGER
set run7ploc=BURGER
set run7type=BURGER
set run7dloc=BURGER
set run8ploc=BURGER
set run8type=BURGER
set run8dloc=BURGER
set run9ploc=BURGER
set run9type=BURGER
set run9dloc=BURGER
set run10ploc=BURGER
set run10type=BURGER
set run10dloc=BURGER
goto DEBUGGER

:DEBUG2
set run1ploc=NONE
set run1type=NONE
set run1dloc=NONE
set run2ploc=NONE
set run2type=NONE
set run2dloc=NONE
set run3ploc=NONE
set run3type=NONE
set run3dloc=NONE
set run4ploc=NONE
set run4type=NONE
set run4dloc=NONE
set run5ploc=NONE
set run5type=NONE
set run5dloc=NONE
set run6ploc=NONE
set run6type=NONE
set run6dloc=NONE
set run7ploc=NONE
set run7type=NONE
set run7dloc=NONE
set run8ploc=NONE
set run8type=NONE
set run8dloc=NONE
set run9ploc=NONE
set run9type=NONE
set run9dloc=NONE
set run10ploc=NONE
set run10type=NONE
set run10dloc=NONE
goto DEBUGGER



::START OF MADE BY CHAT GPT
:: ===== Function to Pad Text to a Fixed Width =====
:PadRight
setlocal EnableDelayedExpansion
set "str=%~1"
set "len=%~2"
set "padded=%str%                                                   "
set "padded=!padded:~0,%len%!"
endlocal & set "%~3=%padded%"
goto :eof

::END OF MADE BY CHAT GPT