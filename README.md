# CryptoProAfterSysUpdatesFix
 После обновлений Windows КриптоПро часто в начинает ругаться ошибками в системном журнале и предлагает выполнить каманды с правами администратора вроде такой:  start cpverify -addreg -file "C:\Windows\system32\wininet.dll"  Хорошо, если это про одну библиотеку и можно вручную.  А если их много, и 100% уверенности, что все изменения легитимны - то можно это сделать предлагаемым скриптом.  Он берет из журнала событий библиотеки, на которые ругается КриптоПро и все их заново верифицирует с помощью cpverify -addreg -file 

Запустить не скачивая можно так:
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/vsingur/CryptoProAfterSysUpdatesFix/master/CryptoProAfterUpdatesFix.ps1'))
Запускать конечно же необходимо в консоли Powershell с административными правами.

Метод запуска подсмотрен у chocolatey  https://chocolatey.org/  
