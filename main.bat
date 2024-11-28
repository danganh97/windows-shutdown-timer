:Top
shutdown -a
@ECHO OFF
ECHO.
ECHO ---------------------------------------
ECHO Welcome to the Shutdown Timer
ECHO ---------------------------------------
ECHO.

:: Prompt the user to enter the number of hours
SET /P UserInput=How many hours do you want the system to shut down?: 

:: Validate if the input is numeric
FOR /F "delims=0123456789" %%A IN ("%UserInput%") DO (
    ECHO Invalid input! Please enter a valid number of hours.
    GOTO Top
)

:: Convert the input to seconds (1 hour = 3600 seconds)
SET /A SECONDS=UserInput*3600

:: Display confirmation
ECHO.
ECHO Your computer will shut down in %UserInput% hour(s), which is %SECONDS% seconds.
ECHO Press Ctrl+C to cancel at any time.
ECHO ---------------------------------------
ECHO.

:: Schedule the shutdown
shutdown -s -t %SECONDS%

:: Countdown loop to display remaining time
:Countdown
CLS

:: Calculate hours, minutes, and seconds
SET /A Hours=SECONDS / 3600
SET /A Minutes=(SECONDS %% 3600) / 60
SET /A RemainingSeconds=SECONDS %% 60

:: Display formatted time
ECHO ---------------------------------------
ECHO Time left until shutdown: %Hours% hour(s), %Minutes% minute(s), %RemainingSeconds% second(s).
ECHO ---------------------------------------

IF %SECONDS% LEQ 0 GOTO End
SET /A SECONDS-=1
timeout /t 1 >NUL
GOTO Countdown

:End
ECHO Shutdown is now occurring. Goodbye!
PAUSE
EXIT
