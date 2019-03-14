REM !! CHECK_CONFIG.BAT !!
ECHO %1
REM IF %1==opr ECHO opr!

CD C:\Program Files (x86)\CheckXPPLUS\system
DEL Comms.ini
COPY Comms-%1.ini Comms.ini
ECHO Comms.ini is changed to Comms-%1.ini!

CD C:\Program Files (x86)\CheckXPPLUS\Config
DEL LoginEnv.ini
COPY LoginEnv-%1.ini LoginEnv.ini
ECHO LoginEnv.ini is changed to LoginEnv-%1.ini!

ECHO CHECK Expert PLUS CONFIG CHANGE IS DONE...

CD c:\Users\21246\Desktop