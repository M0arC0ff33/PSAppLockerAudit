$pth1 = "Microsoft-Windows-Applocker/EXE and DLL"
$pth2 = "Microsoft-Windows-Applocker/MSI and Script"
$pth3 = "Microsoft-Windows-Applocker/Packaged app-Deployment"
$pth4 = "Microsoft-Windows-Applocker/Packaged app-Execution"
$a = Get-AppLockerFileInformation -EventLog -LogPath $pth1 -EventType Audited
$b = Get-AppLockerFileInformation -EventLog -LogPath $pth2 -EventType Audited
$c = Get-AppLockerFileInformation -EventLog -LogPath $pth3 -EventType Audited
$d = Get-AppLockerFileInformation -EventLog -LogPath $pth4 -EventType Audited
$e = Get-AppLockerFileInformation -EventLog -LogPath $pth1 -EventType Allowed
$f = Get-AppLockerFileInformation -EventLog -LogPath $pth2 -EventType Allowed
$g = Get-AppLockerFileInformation -EventLog -LogPath $pth3 -EventType Allowed
$h = Get-AppLockerFileInformation -EventLog -LogPath $pth4 -EventType Allowed
$i = Get-AppLockerFileInformation -EventLog -LogPath $pth1 -EventType Denied
$j = Get-AppLockerFileInformation -EventLog -LogPath $pth2 -EventType Denied
$k = Get-AppLockerFileInformation -EventLog -LogPath $pth3 -EventType Denied
$l = Get-AppLockerFileInformation -EventLog -LogPath $pth4 -EventType Denied
$divider = "-----------------------------------------------------------------------------------"
$hostname = hostname
$pwd = "$env:userprofile\Desktop\AppLockerAudit.txt"
$ipv4 = ipconfig | Select-String -Pattern "IPv4" -SimpleMatch
$date = Get-Date -f yyyy-MM-dd

echo $divider > $pwd
echo $date >> $pwd
echo "Hostname: "$hostname >> $pwd
echo $ipv4 >> $pwd
echo $divider >> $pwd
echo "EXE and DLL Audit Logs" >> $pwd
echo $divider >> $pwd
echo $a >> $pwd
echo " " >> $pwd
echo "EXE and DLL Allowed Logs" >> $pwd
echo $divider >> $pwd
echo $e >> $pwd
echo " " >> $pwd
echo "EXE and DLL Denied Logs" >> $pwd
echo $divider >> $pwd
echo $i >> $pwd
echo " " >> $pwd
echo "MSI and Script Audit Logs" >> $pwd
echo $divider >> $pwd
echo $b >> $pwd
echo " " >> $pwd
echo "MSI and Script Allowed Logs" >> $pwd
echo $divider >> $pwd
echo $f >> $pwd
echo " " >> $pwd
echo "MSI and Script Denied Logs" >> $pwd
echo $divider >> $pwd
echo $j >> $pwd
echo " " >> $pwd
echo "Packaged app-Deployment Audit Logs" >> $pwd
echo $divider >> $pwd
echo $c >> $pwd
echo " " >> $pwd
echo "Packaged app-Deployment Allowed Logs" >> $pwd
echo $divider >> $pwd
echo $g >> $pwd
echo " " >> $pwd
echo "Packaged app-Deployment Denied Logs" >> $pwd
echo $divider >> $pwd
echo $k >> $pwd
echo " " >> $pwd
echo "Packaged app-Execution Audit Logs" >> $pwd
echo $divider >> $pwd
echo $d >> $pwd
echo " " >> $pwd
echo "Packaged app-Execution Allowed Logs" >> $pwd
echo $divider >> $pwd
echo $h >> $pwd
echo " " >> $pwd
echo "Packaged app-Execution Denied Logs" >> $pwd
echo $divider >> $pwd
echo $l >> $pwd
echo " " >> $pwd
