
resource "azurerm_windows_virtual_machine_scale_set" "vm_scale_set_01" {
  name                      = "vm-scale-set-01"
  resource_group_name       = azurerm_resource_group.azure_demo.name
  location                  = azurerm_resource_group.azure_demo.location
  sku                       = var.vm_scale_set_01_sku
  instances                 = 1
  admin_username            = var.admin_username
  admin_password            = var.admin_password
  computer_name_prefix      = "vmss01"
  single_placement_group    = true

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter-Server-Core"
    version   = "latest"
  }

  os_disk {
    storage_account_type = "Standard_LRS"
    caching              = "ReadWrite"
  }

  network_interface {
    name    = "vm-scale-set-01-nic-01"
    primary = true

    ip_configuration {
      name      = "internal"
      primary   = true
      subnet_id = azurerm_subnet.subnet_01.id
      load_balancer_backend_address_pool_ids = [azurerm_lb_backend_address_pool.backend_address_pool_01.id]
    }
  }
}

resource "azurerm_virtual_machine_scale_set_extension" "vm_scale_set_01_extension_01" {
  name                         = "vm-scale-set-01-extension-01"
  virtual_machine_scale_set_id = azurerm_windows_virtual_machine_scale_set.vm_scale_set_01.id
  publisher                    = "Microsoft.Azure.Extensions"
  type                         = "CustomScript"
  type_handler_version         = "2.0"
  settings = jsonencode({
    "commandToExecute": "powershell -ExecutionPolicy Unrestricted Install-WindowsFeature -Name Web-Server -IncludeAllSubFeature -IncludeManagementTools"
  })
}