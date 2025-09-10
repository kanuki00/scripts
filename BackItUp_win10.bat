:: Windows 10

@echo off
:: date
for /f "tokens=1-3 delims=/" %%a in ("%DATE%") do (
    set DD=%%a
    set MM=%%b
    set YYYY=%%c
)
:: time
for /f "tokens=1-2 delims=.," %%a in ("%TIME%") do (
    set HR=%%a
    set MN=%%b
)
:: formatting hour
if %HR% LSS 10 (
    :: if hour is less than ten, it will have a space before num. 
    :: replacing the space with a zero.
    set HR=0%HR:~1,1%
)

set Timestamp=%YYYY%-%MM%-%DD%_%HR%%MN%
echo %Timestamp%

echo Compressing...
"C:\Program Files\7-Zip\7z.exe" a "SaSaLeLe_SMP2_BU_%Timestamp%" "SaSaLeLe_SMP2"
echo Done!

pause