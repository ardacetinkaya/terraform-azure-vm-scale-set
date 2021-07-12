resource "azurerm_subnet" "region_01_virtual_network_01_subnet_01" {
  name                 = "vnet-01-subnet-01"
  resource_group_name  = azurerm_resource_group.region_01.name
  virtual_network_name = azurerm_virtual_network.region_01_virtual_network_01.name
  address_prefixes     = var.region_01_virtual_network_01_subnet_01_address_prefixes
}

resource "azurerm_subnet" "region_01_virtual_network_01_subnet_02" {
  name                 = "vnet-01-subnet-02"
  resource_group_name  = azurerm_resource_group.region_01.name
  virtual_network_name = azurerm_virtual_network.region_01_virtual_network_01.name
  address_prefixes     = var.region_01_virtual_network_01_subnet_02_address_prefixes
}