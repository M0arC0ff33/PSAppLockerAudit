$divider = "-----------------------------------------------------------------------------------"
$hostname = hostname
$pwd = "$env:userprofile\Desktop\AppLockerAudit.txt"
$ipv4 = ipconfig | Select-String -Pattern "IPv4" -SimpleMatch
$date = Get-Date -f yyyy-MM-dd
$pth1 = "Microsoft-Windows-Applocker/EXE and DLL"
$pth2 = "Microsoft-Windows-Applocker/MSI and Script"
$pth3 = "Microsoft-Windows-Applocker/Packaged app-Deployment"
$pth4 = "Microsoft-Windows-Applocker/Packaged app-Execution"
$divider | Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt
$date | Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
echo "Hostname: "$hostname | Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
$ipv4 | Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
$divider | Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
echo "EXE and DLL Audit"| Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
$a = Get-AppLockerFileInformation -EventLog -LogPath $pth1 -EventType Audited | Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
$divider | Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
echo ""| Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
echo "EXE and DLL Allowed"| Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
$e = Get-AppLockerFileInformation -EventLog -LogPath $pth1 -EventType Allowed | Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
$divider | Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
echo ""| Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
echo "EXE and DLL Denied"| Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
$i = Get-AppLockerFileInformation -EventLog -LogPath $pth1 -EventType Denied | Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
$divider | Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
echo ""| Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
echo "MSI and Script Audited"| Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
$b = Get-AppLockerFileInformation -EventLog -LogPath $pth2 -EventType Audited | Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
$divider | Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
echo ""| Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
echo "MSI and Script Audited"| Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
$f = Get-AppLockerFileInformation -EventLog -LogPath $pth2 -EventType Allowed | Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
$divider | Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
echo ""| Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
echo "MSI and Script Audited"| Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
$j = Get-AppLockerFileInformation -EventLog -LogPath $pth2 -EventType Denied | Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
$divider | Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
echo ""| Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
echo "Packaged app-Deployment Audit"| Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
$c = Get-AppLockerFileInformation -EventLog -LogPath $pth3 -EventType Audited | Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
$divider | Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
echo ""| Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
echo "Packaged app-Deployment Allowed"| Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
$g = Get-AppLockerFileInformation -EventLog -LogPath $pth3 -EventType Allowed | Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
$divider | Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
echo "Packaged app-Deployment Denied"| Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
echo ""| Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
$k = Get-AppLockerFileInformation -EventLog -LogPath $pth3 -EventType Denied | Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
$divider | Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
echo ""| Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
echo "Packaged app-Execution Audited"| Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
$d = Get-AppLockerFileInformation -EventLog -LogPath $pth4 -EventType Audited | Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
$divider | Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
echo ""| Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
echo "Packaged app-Execution Allowed"| Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
$h = Get-AppLockerFileInformation -EventLog -LogPath $pth4 -EventType Allowed | Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
$divider | Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
echo ""| Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
echo "Packaged app-Execution Denied"| Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
$l = Get-AppLockerFileInformation -EventLog -LogPath $pth4 -EventType Denied | Out-File -FilePath $env:userprofile\Desktop\AppLockerAudit.txt -Append
