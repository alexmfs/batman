@echo off
echo -------------------------
echo Iniciando um novo Projeto
echo -------------------------

echo "Iniciando Projeto [ %id% ]"

git clone git@github.com:alexmfs/start.git %id% && cd %id%
rd /s /q ".git"

@echo off
:menu
echo ---------------------------
echo Selecione o tipo de Projeto
echo ---------------------------
echo.
echo 1 - Cakephp
echo 2 - Php Simples
echo.

SET /P OPCAO= Digite sua escolha:
IF %OPCAO% EQU 1 GOTO cakephp
IF %OPCAO% EQU 2 GOTO php

:cakephp
echo "CakePhp Select..."
cd ..
start cakephp.bat
pause
GOTO commit

:php
echo "Php Select..."
GOTO commit

:commit
cd %id%
echo "Commit and Push..."

pause

git init
git remote add origin git@bitbucket.org:alexmachado/%id%.git
git add .
git commit -a -m "dependencias instaladas"
git push origin master
git status

pause
exit
