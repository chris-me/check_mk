@echo off
echo ^<^<^<net_socket_stats^>^>^>

echo | set /p="summary "

for /f %%i in ('netstat -an ^| find /v "8020" ^| find /v "10.0.1.16:21 " ^| find /v "10.0.1.16:80 " ^| find /v "10.0.1.16:445 " ^| find /c /v "UDP"') do set TOTAL=%%i


for /f %%i in ('netstat -an ^| find /v "8020" ^| find /v "10.0.1.16:21 " ^| find /v "10.0.1.16:80 " ^| find /v "10.0.1.16:445 " ^| find /c "WARTEND"') do set WAITING=%%i


echo %TOTAL% %WAITING%
