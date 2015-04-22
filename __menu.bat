@echo off
:menu
echo ------------------------
echo Escolha a Opcao desejada
echo ------------------------
echo.
echo 1 - Novo projeto
echo 2 - Clonar projeto
echo 3 - Projeto em andamento
echo.

SET /P OPCAO= Digite sua escolha:
IF %OPCAO% EQU 3 GOTO continue
IF %OPCAO% EQU 2 GOTO clone
IF %OPCAO% EQU 1 GOTO novoprojeto

:continue
set /p id="Nome do Projeto:" %=%
start _continue.bat
exit

:clone
set /p id="Nome do Projeto:" %=%
start _clone.bat
exit

:novoprojeto
set /p id="Nome do Projeto:" %=%
start _novoprojeto.bat
exit
