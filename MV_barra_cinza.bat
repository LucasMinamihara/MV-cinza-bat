@echo off

taskkill /IM CentBrowser.exe /F
TIMEOUT /T 3 /NOBREAK

taskkill /IM chrome.exe /F
TIMEOUT /T 3 /NOBREAK

set ArquivosTemporarios=C:\Users\%USERNAME%\AppData\Local\Temp
del /s /q "%ArquivosTemporarios%"
rmdir /s /q "%ArquivosTemporarios%"
echo Os arquivos temporários foram limpados com sucesso!
TIMEOUT /T 3 /NOBREAK

set DiretorioChrome=C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data

del /q /s /f "%DiretorioChrome%"
rd /s /q "%DiretorioChrome%"

echo Cache do google chrome limpo!
TIMEOUT /T 3 /NOBREAK

start C:\Users\%USERNAME%\Desktop\Soul_MV

pause