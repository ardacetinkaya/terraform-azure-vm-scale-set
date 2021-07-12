resource "azurerm_subnet" "subnet_01" {
  name                 = "vnet-01-subnet-01"
  resource_group_name  = azurerm_resource_group.azure_demo.name
  virtual_network_name = azurerm_virtual_network.virtual_network_01.name
  address_prefixes     = var.virtual_network_01_subnet_01_address_prefixes
}

resource "azurerm_subnet" "subnet_02" {
  name                 = "vnet-01-subnet-02"
  resource_group_name  = azurerm_resource_group.azure_demo.name
  virtual_network_name = azurerm_virtual_network.virtual_network_01.name
  address_prefixes     = var.virtual_network_01_subnet_02_address_prefixes
}