resource "azurerm_virtual_network" "region_02_virtual_network_01" {
  name                = "vnet-01"
  resource_group_name = azurerm_resource_group.region_02.name
  location            = azurerm_resource_group.region_02.location
  address_space       = var.region_02_virtual_network_01_address_space
}

