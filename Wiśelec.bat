@echo off
@chcp 65001
title Wiselec
setlocal enabledelayedexpansion
set mm=0
set yy=7
color %mm%%yy%



:Start
mode 120,16
cls
echo HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH
echo HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH
echo HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH
echo ========================================================================================================================
echo ========================================================================================================================
echo ========================================================================================================================
echo   ////////////////////////////////////         ° ___              ___ ___ ___  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
echo  ////////////////////////////////////   \    / ǀ  ǀ   /\   /\/\   \˅/ \˅/ \˅/   \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
echo ////////////////////////////////////     \/\/  ǀ  ǀ  /¯¯\ /    \   ○   ○   ○     \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
echo ========================================================================================================================
echo ========================================================================================================================
echo ========================================================================================================================
echo HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH
echo HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH
echo HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH
ping localhost -n 2 >nul
:start2
mode 120,30
cls
echo ///////// Witam !!! \\\\\\\\\\
echo ===========================
echo Wybierz:
echo 1. Graj online //nieczyne\\
echo 2. Graj w wiselca offline
echo 3. Ustawienia
echo 4. Wyjdź
set /p menu=
if "%menu%"=="1" exit
if "%menu%"=="2" goto offline
if "%menu%"=="3" goto optio
if "%menu%"=="4" exit
pause


:optio
cls 
echo A.Wybierz kolor tła     
echo B.Wybierz kolor liter
echo C.Powrót do menu
choice /c:abc /n
if ERRORLEVEL 3 goto start2
if ERRORLEVEL 2 goto olitery
if ERRORLEVEL 1 goto okolor


:okolor
cls
color %mm%%yy%
echo A.Wybierz kolor tła:
echo 1. Zielony
echo 2. Jasno niebieski
echo 3. Czerwony
echo 4. Czarny
echo 5. Żółty
echo 6. Powrót
echo B.Wybierz kolor liter:
echo C.Powrót do menu
choice /c:123456bc /n

if ERRORLEVEL 8 goto start2

if ERRORLEVEL 7 goto olitery

if ERRORLEVEL 6 goto optio

if ERRORLEVEL 5 set mm=6&goto okolor

if ERRORLEVEL 4 set mm=0&goto okolor

if ERRORLEVEL 3 set mm=4&goto okolor

if ERRORLEVEL 2 set mm=B&goto okolor

if ERRORLEVEL 1 set mm=A&goto okolor
goto okolor


:olitery
cls
color %mm%%yy%
echo A.Wybierz kolor tła:
echo B.Wybierz kolor liter:
echo 1. Czarny 
echo 2. Czerwony
echo 3. Niebieski
echo 4. Biały
echo 5. Zielony
echo 6. Żółty
echo 7. Powrót
echo C.Powrót do menu
ver >nul
choice /c:a1234567c /n

if ERRORLEVEL 9 goto start2

if ERRORLEVEL 8 goto optio

if ERRORLEVEL 7 set yy=6&goto olitery

if ERRORLEVEL 6 set yy=A&goto olitery

if ERRORLEVEL 5 set yy=7&goto olitery

if ERRORLEVEL 4 set yy=1&goto olitery

if ERRORLEVEL 3 set yy=4&goto olitery

if ERRORLEVEL 2 set yy=0&goto olitery

if ERRORLEVEL 1 goto okolor
goto olitery


:offline
if not exist haslaWiselec\nul md haslaWiselec
cls
echo Wybierz:
echo 1. Wybierz z juz wpisanych hasel
echo 2. Wpisz wlasne haslo
echo 3. Tworzenie wlasnych kategorii hasel
echo 4. Edytowanie wlasnych kategorii hasel
echo 5. Usuwanie wlasnych kategorii hasel
echo 6. Tworzenie/Resetowanie fabrycznych kategorii hasel
echo 7. Powrot
echo.
set /p "wpwl=>>"
if "%wpwl%"=="1" goto wpisaneHa
if "%wpwl%"=="2" goto wlasneHa
if "%wpwl%"=="3" goto tworzKate
if "%wpwl%"=="4" goto edytuKate
if "%wpwl%"=="5" goto usuwKate
if "%wpwl%"=="6" goto resetfabryKate
if "%wpwl%"=="7" goto start2



:resetfabryKate
cls
(echo lew
echo tygrys
echo gepard
echo zyrafa
echo kon
echo pies
echo krolik
echo kot
echo zebra
echo foka
echo tygrys
echo hipopotam
echo dziobak
echo flaming
echo slon
echo puma
echo tapir
echo malpa
echo niedziwiedz
echo pinwgwin
echo krokodyl
echo jelen
echo kozica
echo sarna
echo aligator
echo borsuk
echo miodozer
echo pantera sniezna
echo tygrys bialy
echo lew bialy
echo kajman
echo kajman czarny
echo nosorozec
echo nosorozec czarny
echo nosorozec indyjski
echo sowa
echo orzel bielik
echo sokol
echo zmija
echo kobra
echo pyton
echo grzechotnik
echo boa)>haslaWiselec\Zwierzeta.txt
(echo ford
echo fiat
echo toyota
echo ktm
echo kawasaki
echo yamaha)>haslaWiselec\Motoryzacja.txt
echo Kategorie zostaly utworzone/zresetowane.
pause>nul
goto offline


:tworzKate
set "nazkat1="
cls
echo Podaj nazwe kategorii:
set /p "nazkat1=>>"
if exist "haslaWiselec\%nazkat1%.txt" goto katIstnieje
goto tworzKateHasla

:katIstnieje
cls
echo Kategoria %nazkat1% juz istnieje.
pause>nul
goto tworzKate

:tworzKateHasla
set "haslkat1="
cls
echo Kategoria: %nazkat1%
echo Hasla juz wpisane:
type haslaWiselec\%nazkat1%.txt 2>nul
echo.
echo.
echo Wybierz:
echo 1. Dodaj nowe haslo
echo 2. Dodaj wiele nowych hasel
echo 3. Usun haslo
echo 4. Powrot
set /p "wybor456=>>"
if "%wybor456%"=="1" (
	set fd12=0
	goto noweHasloKate
)
if "%wybor456%"=="2" (
	set fd12=1
	goto noweHasloKate
)
if "%wybor456%"=="3" goto uswaHaslaKate
if "%wybor456%"=="4" goto offline


:noweHasloKate
set "haslkat1="
cls
echo Kategoria: %nazkat1%
echo Hasla juz wpisane:
type haslaWiselec\%nazkat1%.txt 2>nul
echo.
if "%fd12%"=="1" ( echo. Wpisz "-\stop" aby wrocic
) else ( echo. ) 
echo Wpisz nowe haslo:
set /p "haslkat1=>>"
if "%haslkat1%"=="-\stop" goto tworzKateHasla 
if "%haslkat1%"=="" goto tworzKateHaslaNic
(echo %haslkat1%)>>haslaWiselec\%nazkat1%.txt
if "%fd12%"=="1" goto noweHasloKate
goto tworzKateHasla

:tworzKateHaslaNic
cls
echo Nic nie zostalo wpisane.
pause>nul
goto noweHasloKate


:uswaHaslaKate
set "nn="
for /f "delims=" %%a in ('type haslaWiselec\%nazkat1%.txt 2^>nul') do (
	set /a nn+=1
	set pp!nn!=%%a
)
cls
echo Kategoria: %nazkat1%
echo Hasla:
for /l %%i in (1,1,%nn%) do echo %%i. !pp%%i!
set /a nn=%nn%+1
echo %nn%. Powrot
echo.
echo Wybierz cyfre hasla, ktore chcesz usunac:
set /p "uusuhasla=>>"
if "%uusuhasla%"=="%nn%" goto tworzKateHasla
if "%uusuhasla%"=="" goto usuKateHaslaNic
set /a nn=%nn%-1
(echo.)>haslaWiselec\%nazkat1%.txt
for /l %%i in (1,1,%nn%) do (
	if not "%uusuhasla%"=="%%i" (
		(echo !pp%%i!)>>haslaWiselec\%nazkat1%.txt
	)
)
goto uswaHaslaKate

:usuKateHaslaNic
cls
echo Nic nie zostalo wpisane.
pause>nul
goto uswaHaslaKate



:edytuKate
set "edytKat1="
set "es="
for /f "tokens=*" %%i in ('dir /b haslaWiselec') do (
	if not "%%i"=="Zwierzeta.txt" if not "%%i"=="Motoryzacja.txt" (
		set /a es+=1
		set edt!es!=%%i
	)
)
cls
echo Twoje kategorie:
for /l %%a in (1,1,%es%) do (
	echo %%a. !edt%%a:~0,-4!
)
set /a es=%es%+1
echo %es%. Powrot
echo.
echo.
echo Wybierz kategorie, ktora chcesz edytowac:
set /p "edytKat1=>>"
if %edytKat1% GTR %es% goto edytKat1NieMa
if "%edytKat1%"=="%es%" goto offline
if "%edytKat1%"=="" goto edytKat1Nic
set nazkat1=!edt%edytKat1%:~0,-4!
goto tworzKateHasla

:edytKat1NieMa
cls
echo Nie ma takiej kategorii
pause>nul
goto edytuKate

:edytKat1Nic
cls
echo Nic nie zostalo wpisane.
pause>nul
goto edytuKate


:usuwKate
set "xs="
for /f "tokens=*" %%a in ('dir /b haslaWiselec') do (
	if not "%%a"=="Zwierzeta.txt" if not "%%a"=="Motoryzacja.txt" (
		set /a xs+=1
		set zcf!xs!=%%a
	)
)
:usuwKate1
cls
echo Twoje kategorie:
for /l %%a in (1,1,%xs%) do (
	echo %%a. !zcf%%a:~0,-4!
)
set /a xs=%xs%+1
echo %xs%. Powrot
echo.
echo. 
echo Wybierz cyfre kategorii, ktora chesz usnac:
set /p "wyborusuw=>>"
if "%wyborusuw%"=="%xs%" goto offline
if %wyborusuw% GTR %xs% goto usuwKateNieMa
if "%wyborusuw%"=="" goto usuKateNic
del haslaWiselec\!zcf%wyborusuw%! >nul
goto usuwKate

:usuKateNic
cls
echo Nic nie zostalo wpisane.
pause>nul
goto usuwKate

:usuwKateNieMa
cls
echo Nie ma takiej kategorii
pause>nul
goto usuwKate


:wpisaneHa
set "wbkat="
set "x="
for /f "tokens=*" %%a in ('dir /b haslaWiselec') do (
	set /a x+=1
	set zc!x!=%%a
)
:wpisaneHa1
set "ZleLi="
set pierlacz=0
set nie=0
set f=0
set a=0
set ww=0
cls
echo Wybierz kategorie:
for /l %%a in (1,1,%x%) do (
	echo %%a. !zc%%a:~0,-4!
)
set /a x=%x%+1
echo %x%. Powrot
echo.
set /p "wbkat=>>"
if %wbkat% GTR %x% goto NieMaKategorii 
if "%wbkat%"=="%x%" goto offline 
goto KategoriaV2


:NieMaKategorii
cls
set /a x=%x%-1
Echo Nie ma takiej kategori
pause>nul
goto wpisaneHa1


:KategoriaV2
cls
for /f "tokens=*" %%a in (haslaWiselec\!zc%wbkat%!) do (
	set /a licz+=1
	set mz!licz!=%%a
)
set "x="
goto LosowanieHasla

:LosowanieHasla
cls
set x=%random%
set x=!mz%random%!
set x=!mz%random%:~0,2!
if "1" EQU "%licz%" set x=!mz1!& goto pominiLosowanieHasla
if 10 GEQ %licz% set x=!mz%random:~0,1%!& goto pominiLosowanieHasla
if 100 GEQ %licz% set x=!mz%random:~0,2%!& goto pominiLosowanieHasla
set x=!mz%random%!
:pominiLosowanieHasla
if "%KtoryX%"=="2" (
	set ByloToX2=%x%
	set KtoryX=0
	if "%ByloToX2%"=="%x%" goto LosowanieHasla
)
if "%ByloToX%"=="%x%" goto LosowanieHasla
if "%x%"=="" goto LosowanieHasla
set /a KtoryX=%KtoryX%+1
set ByloToX=%x%
goto powrot



:wlasneHa
cls
set pierlacz=0
set "ZleLi="
set "x="
set nie=0
set f=0
set a=0
set ww=0
set /p x="Wpisz nazwe do zgadniecia: "
if "%x%"=="" set ww=0 & goto nic

:powrot
if not "!x:~%ww%!"=="" (
	set /a ww+=1
	goto :powrot
)
goto WyrownanieWWdoA

:nic
cls
echo Nic nie zostalo wpisane.
pause>nul
goto wlasneHa

:WyrownanieWWdoA
cls
set /a w=%w%-1
set ft=%ww%
:PetlaG
cls
set /a f+=1
set g%f%=!x:~%a%,1!
if "!g%f%!"==" " (
	set cym%f%=%f%
	set /a ft=%ft%-1
)
set /a a+=1
if "%a%"=="%ww%" goto PetlaL
goto PetlaG

:PetlaL
cls
for /l %%i in (1,1,%f%) do (
	if not "!cym%%i!"=="%%i" set l%%i= _ 
	if "!cym%%i!"=="%%i" (
		set l%%i=   
	)
)


:Laczenie
for /l %%x in (1,1,%f%) do (
call set var=%%var%%!l%%x!
)


:daneWisOff
set e1=H
set e2=/
set e3=\
set e4=_
set e5=H
set e6=/
set e7=\
set e8=l
set e9=O
set e10=I
set e11=/
set e12=\
set e13=/
set e14=\
set t1= 
set t2= 
set t3= 
set t4= 
set t5= 
set t6= 
set t7= 
set t8= 
set t9= 
set t10= 
set t11= 
set t12= 
set t13= 
set t14= 
:dalej
if "%nie%"=="15" goto KoniecPrzeg
if not "%pierlacz%"=="0" for /l %%x in (1,1,%f%) do (
call set var=%%var%%!l%%x!
)>nul
set /a pierlacz+=1
set db=0
set tak=0
set t%nie%=!e%nie%!
cls
echo.
echo.
echo.   %t4%%t4%%t4%%t4%%t4%%t4%%t4%%t4%%t4%%t4%%t4%
echo.   %t1%    %t8%    %t5%
echo.   %t1%    %t8%    %t5%
echo.   %t1%    %t9%    %t5%
echo.   %t1%   %t11%%t10%%t12%   %t5%
echo.   %t1%    %t10%    %t5%
echo.   %t1%   %t13% %t14%   %t5%
echo.   %t1%         %t5%
echo.  %t2%%t1%%t3%       %t6%%t5%%t7%
echo. %t2% %t1% %t3%     %t6% %t5% %t7%
echo.
echo %var%
echo Liczba bledow: %nie%
echo Bledne litery: %ZleLi%
set "z="
set /p z="Zgadnij slowo podajac litere lub pelny wyraz: "
if "%z%"=="%x%" goto KoniecWyg
if "%z%"=="" (
	cls
	set var=
	echo Nic nie zostalo wpisane.
	pause>nul
	goto dalej
)
:CzyBylo
for /l %%x in (1,1,%f%) do (
	if "%z%"=="!l%%x!" goto bylo
	if "%z%"=="!pu%%x!" set /a nie+=1 & goto bylo
)
:zGnaL&spr
for /l %%a in (1,1,%f%) do (
	if "%z%"=="!g%%a!" (
		if not "%%a"=="!cym%%a!" (
			set l%%a=!g%%a!
			set db=1
		)
	)
	if "%%a"=="%f%" (
		if "!db!"=="1" goto Dobrze 
		goto zle
	)
)

:bylo
cls
set var=
echo Ta litera juz byla.
pause>nul
goto dalej

:Dobrze
for /l %%x in (1,1,%f%) do (
	if "!l%%x!"=="!g%%x!" set /a tak+=1
	if "!tak!"=="%ft%" goto KoniecWyg
)
cls
set var=
echo Dobry strzal
pause>nul
goto dalej


:zle
for /l %%x in (1,1,%f%) do (
	if "!l%%x!"=="!g%%x!" set /a tak+=1
	if "!tak!"=="%ft%" goto KoniecWyg
)
call set ZleLi=%%ZleLi%%!z! 
cls
set /a nie+=1
set pu%nie%=%z%
set var=
echo pudlo
pause>nul
goto dalej


:KoniecWyg
cls
echo Brawo odgadles/as slowo: %x%
echo Liczba twoich bledow wyniosla: %nie%
echo                        __    _                               ____  ____  ____
echo   \          / \   /  /  \  I \     /\     I\   I     /\     \  /  \  /  \  /
echo    \        /   \ /   I _   I_/    /__\    I \  I    /__\     \/    \/    \/
echo     \  /\  /     I    I  \  I\    /    \   I  \ I   /    \    __    __    __
echo      \/  \/      I    \__/  I \  /      \  I   \I  /      \   \/    \/    \/
pause>nul
for /l %%a in (1,1,%f%) do set l%%a=
for /l %%x in (1,1,%f%) do set g%%x=
for /l %%x in (1,1,%f%) do set pu%%x=
for /l %%x in (1,1,%f%) do set mz%%x=
for /l %%x in (1,1,%f%) do set com%%x=
for /l %%x in (1,1,14) do set e%%x=
for /l %%x in (1,1,14) do set t%%x=
set var=
set tak=
set ft=
set f=
set z=
set x=
set licz=
set nie=
set ZleLi=
goto offline
endlocal
exit


:KoniecPrzeg
set t9=X
cls
echo.
echo.
echo.   %t4%%t4%%t4%%t4%%t4%%t4%%t4%%t4%%t4%%t4%%t4%
echo.   %t1%    %t8%    %t5%
echo.   %t1%    %t8%    %t5%
echo.   %t1%    %t9%    %t5%
echo.   %t1%   %t11%%t10%%t12%   %t5%
echo.   %t1%    %t10%    %t5%
echo.   %t1%   %t13% %t14%   %t5%
echo.   %t1%         %t5%
echo.  %t2%%t1%%t3%       %t6%%t5%%t7%
echo. %t2% %t1% %t3%     %t6% %t5% %t7%
echo Prawidlowa odpowiedzi:
echo  %x%
echo Przegrales :(
pause>nul
for /l %%a in (1,1,%f%) do set l%%a=
for /l %%x in (1,1,%f%) do set g%%x=
for /l %%x in (1,1,%f%) do set pu%%x=
for /l %%x in (1,1,%f%) do set mz%%x=
for /l %%x in (1,1,%f%) do set com%%x=
for /l %%x in (1,1,14) do set e%%x=
for /l %%x in (1,1,14) do set t%%x=
set var=
set tak=
set ft=
set f=
set z=
set licz=
set x=
set nie=
set ZleLi=
goto offline
endlocal
exit







