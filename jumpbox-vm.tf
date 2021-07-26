resource "azurerm_network_interface" "jumpbox_01" {
  name                = "jumpbox-01-nic"
  location            = azurerm_resource_group.region_01.location
  resource_group_name = azurerm_resource_group.region_01.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.region_01_virtual_network_01_subnet_02.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.region_01_public_ip_02.id
  }
}

resource "azurerm_windows_virtual_machine" "jumpbox_01" {
  name                = "jumpbox-vm"
  resource_group_name = azurerm_resource_group.region_01.name
  location            = azurerm_resource_group.region_01.location
  size                = "Standard_B2s"
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  network_interface_ids = [
    azurerm_network_interface.jumpbox_01.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}

resource "azurerm_dev_test_global_vm_shutdown_schedule" "jumpbox_01_shutdown_schedule" {
  virtual_machine_id = azurerm_windows_virtual_machine.jumpbox_01.id
  location           = azurerm_resource_group.region_01.location
  enabled            = true

  daily_recurrence_time = "1700"
  timezone              = "Turkey Standard Time"

  notification_settings {
    enabled = false
  }
}

###################################

resource "azurerm_network_interface" "jumpbox_02" {
  name                = "jumpbox-02-nic"
  location            = azurerm_resource_group.region_02.location
  resource_group_name = azurerm_resource_group.region_02.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.region_02_virtual_network_01_subnet_02.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.region_02_public_ip_02.id
  }
}

resource "azurerm_windows_virtual_machine" "jumpbox_02" {
  name                = "jumpbox-vm-02"
  resource_group_name = azurerm_resource_group.region_02.name
  location            = azurerm_resource_group.region_02.location
  size                = "Standard_B2s"
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  network_interface_ids = [
    azurerm_network_interface.jumpbox_02.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}

resource "azurerm_dev_test_global_vm_shutdown_schedule" "jumpbox_02_shutdown_schedule" {
  virtual_machine_id = azurerm_windows_virtual_machine.jumpbox_02.id
  location           = azurerm_resource_group.region_02.location
  enabled            = true

  daily_recurrence_time = "1700"
  timezone              = "Turkey Standard Time"

  notification_settings {
    enabled = false
  }
}