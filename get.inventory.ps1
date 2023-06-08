Write-Output "Inventory PC:"

'CPU: ' + (Get-WmiObject Win32_processor).Name; 'CPU Number Of Cores: ' + (Get-WmiObject Win32_processor).NumberOfCores; 'MB: ' + (Get-WmiObject Win32_BaseBoard).Product ; 'MB BIOS: ' + (Get-WmiObject Win32_BIOS).SMBIOSBIOSVersion ; 'RAM Serial (BANK 0): ' + (Get-WmiObject Win32_PhysicalMemory | Where-Object {$_.BankLabel -eq 'BANK 0'}).PartNumber; 'RAM Speed (BANK 0): ' + (Get-WmiObject Win32_PhysicalMemory | Where-Object {$_.BankLabel -eq 'BANK 0'}).Speed + 'Mhz'; 'RAM (BANK 0): ' + (Get-WmiObject Win32_PhysicalMemory | Where-Object {$_.BankLabel -eq 'BANK 0'}).Capacity / 1Gb + 'Gb'; 'RAM (Total Gb): ' + (Get-WmiObject Win32_PhysicalMemory | Measure-Object -Property capacity -Sum).sum / 1Gb + 'Gb'

pause   