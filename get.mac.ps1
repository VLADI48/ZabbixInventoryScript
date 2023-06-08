Write-Output "MAC address of the first network adapter:"

Get-WmiObject win32_networkadapterconfiguration -Filter "IPEnabled='True'" | select macaddress | findstr [1]

pause             