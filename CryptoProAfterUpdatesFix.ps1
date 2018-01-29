
$date = (Get-Date).AddHours(-24)
$events = Get-WinEvent -FilterHashTable @{ LogName = "System"; StartTime = $date; ID = 256 }
$events = $events |Sort-Object -Property Message  |select-object -property Message -Unique
$dlls =@()
foreach($event in $events)
{
    $a = ($event -split '"')[1]
    $dlls+= "${a}"
}
$dlls
foreach($dll in $dlls)
{
    $proc = 'C:\Program Files (x86)\Crypto Pro\CSP\cpverify.exe'
    $arguments = " -addreg -file ${dll}"
    $p = start-process -FilePath $proc -ArgumentList $arguments -wait -NoNewWindow -PassThru
    $p.HasExited
    $p.ExitCode

}
 