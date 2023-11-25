<#While PowerShell can provide information about certain aspects of a system's configuration and security settings, 
it doesn't have direct capabilities for assessing physical security aspects, such as access control systems, 
surveillance cameras, or other physical security measures. Physical security often involves a combination of electronic 
and procedural controls that PowerShell cannot directly interact with.

However, you can use PowerShell to gather information related to security settings that may indirectly indicate the 
level of physical security. Here are a few examples:

    Check for Screen Lock Configuration:

These PowerShell commands focus on retrieving information about system settings, security policies, 
and relevant events that may indirectly relate to physical security. However, assessing physical security 
typically involves a broader set of tools, physical inspections, and collaboration with security professionals.

For a comprehensive physical security assessment, consider involving physical security experts who can 
perform on-site evaluations and provide insights into the effectiveness of access controls, surveillance systems, 
and other physical security measures. PowerShell can complement these efforts by providing insights into the system's 
configuration and security settings.#>
    powershell

# Check if screen lock is enabled
$screenLockEnabled = powercfg /query SCHEME_CURRENT_SUB_SLEEP STANDBYIDLE
Write-Host "Screen Lock Enabled: $screenLockEnabled"

#Review Security Policy Settings:
#powershell
# Check local security policy settings
secedit /export /cfg "$env:TEMP\SecurityOptions.inf"
Get-Content "$env:TEMP\SecurityOptions.inf" | Select-String -Pattern "ScreenSaver*,.*"

#Check for BitLocker Encryption:
#powershell
# Check BitLocker status
Get-BitLockerVolume

#Retrieve Logon and Logoff Events:
#powershell
# Retrieve logon and logoff events
Get-WinEvent -LogName Security -FilterXPath "*[System[EventID=4624 or EventID=4634]]" | Select-Object TimeCreated, Message

#Monitor System Changes:
#powershell
    # Check for changes in the system
    Get-WinEvent -LogName Security -FilterXPath "*[System[EventID=4656]]" | Select-Object TimeCreated, Message

