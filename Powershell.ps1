#Name          : PCINFO-Example.ps1
#Script URI    : 
#Description   : Gets pc information from this machine
#Version       : 0.0.1
#Author        : Jorg Jaring
#Author URI    : https://github.com/JorgJaring

CLS # Cleared je scherm
$date = Get-Date
write-host "-------------------------- PC INFO --------------------------"
write-host "Current Date and Time : " $date
write-host "Computername          : " $env:COMPUTERNAME
write-host "OS                    : " $env:OS
Write-host "-------------------------- Disk -----------------------------"
$disk = Get-Disk -Number 0
write-host "Disk 0 Type           : " $disk.FriendlyName
write-host "Disk 0 Size in bytes  : " $disk.AllocatedSize
write-host "-------------------------- WiFi -----------------------------"
$wifi = Get-NetAdapter | Where-Object {$_.Name -eq "Wi-Fi"}
write-host "Interface Description : " $wifi.InterfaceDescription
write-host "Interface Link-Speed  : " $wifi.LinkSpeed
write-host "Interface Status      :  " -NoNewline 
write-host $wifi.Status -ForegroundColor Green
write-host "-------------------------- PowerShell -----------------------"
write-host "PowerShell Version    : " $PSVersionTable.PSVersion
write-host "-------------------------- Graphic Card ---------------------"
$CPU = Get-WmiObject Win32_VideoController
write-host "Graphic card          : " $CPU.Name 