@echo off
echo ----------------------------------------------------------------
echo  Monitorando o Host ou IP 
echo ----------------------------------------------------------------
set url=192.168.1.69
:loop
ping %url% -n 1 | find "TTL" > nul
if errorlevel 1 (
echo %url% esta fora do ar
curl -d  "O ip %url% esta fora do ar" ntfy.sh/monitoramento
) else (
echo %url% esta online
curl -d "O ip %url% esta online" ntfy.sh/monitoramento
)
ping -n 5 127.0.0.1 > nul
timeout /t 100
goto loop
