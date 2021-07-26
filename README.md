# Azure VM Scale Set with terraform example

Basic _terraform_ codes for Azure VM Scale Set and related resources.

Scenario: Two VM Scale Set instances as backend for Azure Front Door. This is just a simple _terraform_ example so that some additional commands are needed to be executed in the scale set instance. In real-life scenario, some required VM Image must be used.

In this example, IIS's default page mocks an application. 


- Get scale set instances' Windows features
```
Get-WindowsFeature | where{$_.InstallState -eq "Installed"}
```

- Install Web-Server windows feature to VM Scale Set instances to do some test
```
Install-WindowsFeature -Name Web-Server -IncludeAllSubFeature -IncludeManagementTools
```

- Check localhost
```
Invoke-WebRequest -Uri 127.0.0.1 -UseBasicParsing
```

- Check connectivity in scale set instance
```
Invoke-WebRequest -Uri https://www.google.com -UseBasicParsing
```

- Change default IIS Page's content to reflect region info
```
Set-Content -Path C:\inetpub\wwwroot\iistart.htm -Value "Hello World - Region 01/02"
```

