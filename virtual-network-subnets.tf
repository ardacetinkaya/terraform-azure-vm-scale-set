resource "azurerm_subnet" "subnet_01" {
  name                 = "vnet-01-subnet-01"
  resource_group_name  = azurerm_resource_group.azure_demo.name
  virtual_network_name = azurerm_virtual_network.virtual_network_01.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_subnet" "subnet_02" {
  name                 = "vnet-01-subnet-02"
  resource_group_name  = azurerm_resource_group.azure_demo.name
  virtual_network_name = azurerm_virtual_network.virtual_network_01.name
  address_prefixes     = ["10.0.3.0/24"]
}