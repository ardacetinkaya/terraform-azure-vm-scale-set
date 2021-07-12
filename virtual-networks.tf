resource "azurerm_virtual_network" "virtual_network_01" {
  name                = "vnet-01"
  resource_group_name = azurerm_resource_group.azure_demo.name
  location            = azurerm_resource_group.azure_demo.location
  address_space       = ["10.0.0.0/16"]
}

