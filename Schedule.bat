:main"
@echo off
set string=%date%
set "daydate=%string:~0,3%"
set "newD=%string:~4,10%"
echo %daydate%
echo.
@For /F "tokens=2,3,4 delims=/ " %%A in ('Date /t') do @( 
    Set Month=%%A
    Set Day=%%B
    Set Year=%%C
)

@echo DAY = %Day%
@echo Month = %Month%
@echo Year = %Year%
PING 1.1.1.1 -n 1 -w 1000 >NUL
:distance
echo.
set "from=08-28-2017"
set "to=%newD%"
echo.
echo Wscript.Echo #%to%# - #%from%# >tmp.vbs
for /f %%a in ('cscript /nologo tmp.vbs') do set "total=%%a"
del tmp.vbs
echo The Total number of days from %from% until %to% is %total%
set /a "otherTotale=%total%/7"
set /a "otherTotalee=%otherTotale%*2
set /a "otherTotal=%total%-%otherTotalee%
echo The total of school days is %otherTotal%
call :evenorodd
PING 1.1.1.1 -n 1 -w 1000 >NUL
goto schedule
:evenorodd
set /a "dtotal=%total%/2"
set /a "etotal=%dtotal%*2"

IF %etotal%==%total%  (

set "string=!Engineering DIM Spanish USHistory"
echo Blue Day
set bday=1
 ) ELSE ( 
set "string=!English III BIM Algebra Chemistry"

echo Gold Day
set bday=0
 )
 goto :eof
:schedule
set "first=9:00am, %string:~1,11%"
set "second=10:38am, %string:~13,3%"
set "third=12:54pm, %string:~17,7%"
set "forth=2:30, %string:~25,9%"
echo %first%~%second%~%third%~%forth%
PING 1.1.1.1 -n 1 -w 1000 >NUL
set basicTime=%time:~0,5%
pause

set displayed1=0
set displayed2=0
set displayed3=0
set displayed4=0
set displayed5=0
if %daydate%==Mon goto altloop
:loop
set ampm=am
cls
set basicTime=%time:~0,5%
set basicTimeHour=%time:~0,2%

if %basicTimeHour% geq 12 (
set ampm=pm
)
echo %basicTimeHour%
echo %time% 
echo %basicTime%%ampm%
set "totalitytime=%basicTime%%ampm%"

if %displayed5%==0 (

if %totalitytime%==10:30am (
cscript MessageBox.vbs "It is %totalitytime%, 2 minutes till %second%!"
set displayed5=1
)

				)

if %displayed1%==0 (

if %totalitytime%==08:50am (
cscript MessageBox.vbs "It is %totalitytime%, 10 minutes till %first%!"
set displayed1=1
)

				)

if %displayed2%==0 (

if %totalitytime%==12:52pm (
cscript MessageBox.vbs "It is %totalitytime%, 2 minutes till %third%!"
set displayed2=1
)

				)

if %displayed3%==0 (

if %totalitytime%==02:28pm (
cscript MessageBox.vbs "It is %totalitytime%, 2 minutes till %forth%!"
set displayed3=1
)

				)

if %displayed4%==0 (

if %totalitytime%==04:00pm (
cscript MessageBox.vbs "It is %totalitytime%, 2 minutes till the day ends!"
set displayed4=1
)

				)

if %basicTimeHour% geq 23 (
echo Reset!
set displayed1=0
set displayed2=0
set displayed3=0
set displayed4=0
set displayed5=0
)
PING 1.1.1.1 -n 1 -w 1000 >NUL
goto loop
:altloop
echo Its monday!
set ampm=am
cls
set basicTime=%time:~0,5%
set basicTimeHour=%time:~0,2%

if %basicTimeHour% geq 12 (
set ampm=pm
)
echo %basicTimeHour%
echo %time% 
echo %basicTime%%ampm%
set "totalitytime=%basicTime%%ampm%"

if %displayed1%==0 (

if %totalitytime%==08:58am (
cscript MessageBox.vbs "It is %totalitytime%, 2 minutes till %first%!"
set displayed1=1
)

				)

if %displayed2%==0 (

if %totalitytime%==10:36am (
cscript MessageBox.vbs "It is %totalitytime%, 2 minutes till %first%!"
set displayed2=1
)

				)

if %displayed3%==0 (

if %totalitytime%==12:52pm (
cscript MessageBox.vbs "It is %totalitytime%, 2 minutes till %first%!"
set displayed3=1
)

				)

if %displayed4%==0 (

if %totalitytime%==02:30pm (
cscript MessageBox.vbs "It is %totalitytime%, 2 minutes till %first%!"
set displayed4=1
)

				)

if %basicTimeHour% geq 23 (
echo Reset!
set displayed1=0
set displayed2=0
set displayed3=0
set displayed4=0
)
PING 1.1.1.1 -n 1 -w 1000 >NUL
goto altloop