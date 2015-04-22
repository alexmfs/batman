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
start _cakephp.bat
pause
cd %id%
ren public\ delete
ren cakephp\ public
rd /s /q "delete"
GOTO construtor
exit

:php
echo "Php Select..."
cd ..
GOTO init
exit

:construtor
echo "Creating Folders..."
echo .
mkdir public\src\Template\Element\models
mkdir public\src\Template\Element\helpers
mkdir public\webroot\css\fonts
echo .
echo "Rename Files in Cakephp..."
echo .
ren public\src\Template\Layout\default.ctp default.cakephp.ctp
ren public\src\Template\Pages\home.ctp home.cakephp.ctp
echo .
echo "Copying Layouts..."
echo .
copy dev\cake3\Layout\default.ctp public\src\Template\Layout\default.ctp
copy dev\cake3\Layout\default-home.ctp public\src\Template\Layout\default-home.ctp
echo .
echo "Copying Pages..."
echo .
copy dev\cake3\Pages\styleguide.ctp public\src\Template\pages\styleguide.ctp
copy dev\cake3\Pages\home.ctp public\src\Template\pages\home.ctp
echo .
echo "Copying Elements..."
echo .
copy dev\cake3\Element\ public\src\Template\Element\
copy dev\cake3\Element\Model\ public\src\Template\Element\models\
copy dev\cake3\Element\helpers\ public\src\Template\Element\helpers\
echo .
echo "Copying Errors..."
echo .
copy dev\cake3\errors\ public\src\Template\Error\
echo .
echo "Copying configs..."
echo .
copy dev\cake3\config\routes.php public\config\routes.php
GOTO grunt

:grunt
start start.bat
echo .
echo "Aguarde instalacao do Grunt e Bower para continuar..."
echo .
pause

start config.bat
echo .
echo "Faca as configuracoes iniciais do projeto para continuar..."
echo .
pause
del start.bat
del config.bat
GOTO init

:init
echo "Iniciando Repositorio..."
echo .
echo "Commit and Push..."
echo .

git init
git remote add origin git@bitbucket.org:boideia/%id%.git
git add .
git commit -a -m "dependencias instaladas"
git push origin master
git status

GOTO exit

start work.bat
:exit
exit
