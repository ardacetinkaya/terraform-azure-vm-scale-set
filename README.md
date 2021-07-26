# Azure VM Scale Sets with _terraform_ example

Basic **_terraform_** example for Azure VM Scale Sets with Azure Front Door.

**Scenario:** We have two VMs as **Azure VM Scale Sets** instances for our business application. **Azure Front Door** have a backend pool that contains these VMs. If the VM instance in one region fails, **Azure Front Door** handle the requests with other region. This is just a simple _terraform_ example so some additional commands are needed to be executed in the scale set instance to do some test. In real-life scenario, pre-build VM Images with applications should be used.

## Provision Azure resources

- Check _terraform.tfvars_ file, update required Azure Service Principal values and VM info.
- Run following _terraform_ command in order
```terraform
terraform init
```

```terraform
terraform plan
```

```terraform
terraform apply -auto-approve
```

## Test

There are two VMs as jump-box per region to connect VM Scale Sets instance. From that jump-boxes, we need to RDP to VM Scale Sets instances. 

In this example, **IIS's default page** mocks an application. So, first IIS should be installed in VM instance.

- Get scale set instances' Windows features
```powershell
Get-WindowsFeature | where{$_.InstallState -eq "Installed"}
```

- Install Web-Server(a.k.a IIS) windows feature to VM Scale Set instance to do some test
```powershell
Install-WindowsFeature -Name Web-Server -IncludeAllSubFeature -IncludeManagementTools
```

- Check localhost
```powershell
Invoke-WebRequest -Uri 127.0.0.1 -UseBasicParsing
```

- Check connectivity in scale set instance
```powershell
Invoke-WebRequest -Uri https://www.google.com -UseBasicParsing
```

- Change default IIS Page's content; this is for to observe application in other region
```powershell
Set-Content -Path C:\inetpub\wwwroot\iistart.htm -Value "Hello World - Region 01/02"
```


