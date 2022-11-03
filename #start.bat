:menu
@echo off & color 0f & cls & title start.bat
mode 60,25
color 03
echo.
echo        [1] Lancer Serveur
echo        [2] Supprimer cache puis Lancer le Serveur
echo        [3] Aide (Mon Discord de Developpement)
echo        [4] Fermer le start.bat.
echo.
set /p answer="Quelle option choisissez-vous ? > "
if /i {%ANSWER%}=={1} (goto :1)
if /i {%ANSWER%}=={2} (goto :2)
if /i {%ANSWER%}=={3} (goto :3)
if /i {%ANSWER%}=={4} (goto :4)
goto :menu
exit

:1
color 03
echo.
echo Lancement du serveur en cours...
ping localhost -n 2 >nul
echo.
".\FXServer.exe" +exec server.cfg
rem Changez les 2 chemins d'accès ci-dessus
pause
exit

:2
color 03
echo.
echo Suppression du cache en cours...
RMDIR /s /q ".\cache\"
rem Changez le chemin d'accès ci-dessus
echo.
ping localhost -n 2 >nul
echo Dossier cache supprime ! Demarage du Server ...
echo.
ping localhost -n 2 >nul
echo.
".\FXServer.exe" +exec server.cfg
rem Changez les 2 chemins d'accès ci-dessus

:3
echo.
color 03
echo Redirection vers le discord de Cocktail Developpement !
echo Redirection en cours ...
start https://discord.gg/cocktaildev

:4
echo.
echo Fermeture du start.bat en cours...
ping localhost -n 3 >nul
exit
