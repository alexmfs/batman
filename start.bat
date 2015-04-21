@echo off
:menu
echo ------------------------
echo Escolha a Opção desejada
echo ------------------------
echo.
echo 1 - Novo projeto
echo 2 - Clonar projeto
echo 3 - Continuar Projeto
echo.

SET /P OPCAO= Digite sua escolha:
IF %OPCAO% EQU 3 GOTO grunt
IF %OPCAO% EQU 2 GOTO clone
IF %OPCAO% EQU 1 GOTO init

:grunt
set /p id="Nome do Projeto:" %=%
start grunt.bat
exit

:clone
set /p id="Nome do Projeto:" %=%
start clone.bat
exit

:init
set /p id="Nome do Projeto:" %=%
start init.bat
exit
