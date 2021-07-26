
resource "azurerm_windows_virtual_machine_scale_set" "region_02_vm_scale_set_01" {
  name                      = "vm-scale-set-01"
  resource_group_name       = azurerm_resource_group.region_02.name
  location                  = azurerm_resource_group.region_02.location
  sku                       = var.region_02_vm_scale_set_01_sku
  instances                 = var.region_02_vm_scale_set_01_instances
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
      subnet_id = azurerm_subnet.region_02_virtual_network_01_subnet_01.id
      load_balancer_backend_address_pool_ids = [azurerm_lb_backend_address_pool.region_02_load_balancer_01_backend_address_pool_01.id]
    }
  }
}