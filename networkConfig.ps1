<#Certainly! In PowerShell, you can use cmdlets and commands to achieve similar results. 
Here are the equivalent PowerShell commands for checking insecure network configurations 
on a Windows machine:

These PowerShell commands provide information about network configurations on a 
Windows machine. Run these commands in a PowerShell console with appropriate permissions. 
Some commands may require elevated privileges, so it's recommended to run PowerShell 
as an administrator if needed. Review the output to identify any security-related 
issues or misconfigurations. #>
#    Check Open Ports:
#    powershell

Get-NetTCPConnection | Format-Table -AutoSize

#Identify Listening Services:
#powershell

Get-Process -Id (Get-NetTCPConnection -State Listen).OwningProcess

#Firewall Configuration:
#powershell

Get-NetFirewallProfile | Format-Table -AutoSize

#Review Network Shares:
#powershell

Get-SmbShare

#Check Network Adapters:
#powershell

Get-NetAdapter | Select-Object InterfaceAlias,MacAddress,Status

#Identify DHCP Configuration:
#powershell

Get-NetIPAddress | Where-Object { $_.AddressFamily -eq "IPv4" }

#Wi-Fi Network Information:
#powershell

Get-NetAdapter | Where-Object { $_.InterfaceDescription -like "*Wireless*" } | Get-NetAdapterStatistics

#Review Routing Table:
#powershell

Get-NetRoute

#List Network Connections:
#powershell

Get-NetIPInterface

#Check DNS Configuration:
#powershell

Get-DnsClientServerAddress

#Verify Proxy Settings:
#powershell

Get-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings' | Select-Object ProxyServer

#Inspect NetBIOS Information:
#powershell

    nbtstat -n
