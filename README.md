# Zabbix Inventory Script

This is a small script to get information about computer hardware (CPU, MB, GPU, Drive, RAM), MAC address and data output to Zabbix.

The script must be written to the zabbix_agent2.conf file in the UserParameter section and given a name. I created two parameters, get.inventory for the computer and get.mac for the MAC address.

Then in zabbix create items in your template with parameters and set host inventory fields. I specified Hardware (full detail) and MAC address A. I used the Windows by Zabbix agent template. This script has been tested on Windows 10, 11 and Zabbix 6.4, Agent 2.

This script has a feature - no variables are used and it does not need to be placed on the computer as a separate script file.
