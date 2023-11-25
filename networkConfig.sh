<#Checking for insecure network configurations on a Windows machine involves running various 
commands and tools to gather information about the network settings. Here are some commands and tools you can use:

These commands provide information about network configurations on a Windows machine. 
Review the output to identify any anomalies or potential security issues. Keep in mind that the 
effectiveness of these commands may vary based on the specific security posture and configuration 
of the system. Additionally, some commands may require administrative privileges to access certain 
information. Always execute commands responsibly and adhere to security best practices.
  #>
    #Check Open Ports:
    #    Use the netstat command to display active network connections and listening ports.
    #   bash

    netstat -ano

#Identify Listening Services:
#    Use the tasklist command to identify the processes associated with the open ports.
#    bash

    tasklist | find "PID"

#Firewall Configuration:
#    Check the Windows Firewall configuration using the netsh command.
#    bash

    netsh advfirewall show allprofiles

#Review Network Shares:
#    Use the net share command to list shared resources on the system.
#    bash

    net share

#Check Network Adapters:
#    Use the ipconfig command to view information about network adapters.
#    bash

    ipconfig /all

vIdentify DHCP Configuration:
#    Verify the DHCP configuration using the ipconfig command.
#    bash

    ipconfig /all

#Wi-Fi Network Information:
#    Use the netsh wlan show interfaces command to display information about the Wi-Fi interface.
#    bash

    netsh wlan show interfaces

#Review Routing Table:
#    Check the routing table using the route command.
#    bash

    route print

#List Network Connections:
#    Use the netsh interface ipv4 show interfaces command to list IPv4 interfaces and their status.
#    bash

    netsh interface ipv4 show interfaces

#Check DNS Configuration:
#    Use the ipconfig /all command to view DNS server configuration.
#    bash

    ipconfig /all

#Verify Proxy Settings:
#    Check proxy settings using the netsh winhttp show proxy command.
#    bash

    netsh winhttp show proxy

#Inspect NetBIOS Information:
#    Use the nbtstat -n command to display NetBIOS name cache.
#    bash

        nbtstat -n

