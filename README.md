# Azure VM Scale Set with terraform example

Basic _terraform_ codes for Azure VM Scale Set and related resources.

Scenario: Two VM Scale Set instances as backend for Azure Front Door


- Get scale set instances' Windows features
```
Get-WindowsFeature | where{$_.InstallState -eq "Installed"}
```

- Install Web-Server windows feature to VM Scale Set instances to do some test
```
powershell -ExecutionPolicy Unrestricted Install-WindowsFeature -Name Web-Server -IncludeAllSubFeature -IncludeManagementTools
```

- Check connectivity in scale set instance
```
powershell Invoke-WebRequest -Uri https://www.google.com -UseBasicParsing

```
