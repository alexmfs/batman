@echo off
echo -----------------------------
echo.
echo Configurando WorkStaion
echo.
echo -----------------------------
echo.
echo Qual a versao do windows
echo 1 - 32 bits
echo 2 - 64 bits
echo.

SET /P OPCAO= Digite sua escolha:
IF %OPCAO% EQU 2 GOTO 32bits
IF %OPCAO% EQU 1 GOTO 64bits

:64bits
start http://www.wampserver.com/en/#wampserver-64-bits-php-5-5
GOTO seguir

:32bits
start http://www.wampserver.com/en/#wampserver-32-bits-php-5-5
GOTO seguir

:seguir
start http://nodejs.org/dist/v0.10.33/x64/node-v0.10.33-x64.msi
start http://git-scm.com/download/win
start http://www.sublimetext.com/2

echo -----------------------------
echo.
echo Aguarde os downloads
echo.
echo -----------------------------

pause

echo -----------------------------
echo.
echo Instalando Scripts
echo.
echo -----------------------------

npm install -g grunt-cli
npm install -g bower
npm install --global pageres
npm install --global browser-sync
