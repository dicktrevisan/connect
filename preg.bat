@echo off
color a
:inicio
echo aijioarjoirjaoijra
echo ************************
echo *** Desligador de PC ***
echo ************************
echo *** Escolha a opcao ****
echo *** 1 - Desligar *******
echo *** 2 - Reiniciar ******
echo *** 3 - Cancelar *******
echo *** 4 - Sair ***********

set /p opcao=

echo *******PROCESSANDO******
pause
if %opcao% equ 3 goto opcao3
if %opcao% gtr 3 goto opcao4

echo ***** Digite o tempo****
set /p tempo=

if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2


:opcao1
shutdown -s -t %tempo%
echo *Desligamento Agendado**
pause
goto inicio

:opcao2
shutdown -r -t %tempo%
echo Reinicializacao Agendada**
pause
goto inicio

:opcao3
shutdown -a
echo ** operacao cancelada ***
pause
goto inicio

:opcao4
echo *** Ecerrando aplicacao***
pause
exit