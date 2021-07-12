resource "azurerm_network_security_group" "nsg_01" {
  name                = "nsg01"
  location            = azurerm_resource_group.azure_demo.location
  resource_group_name = azurerm_resource_group.azure_demo.name
}

resource "azurerm_subnet_network_security_group_association" "nsg_01_association" {
  subnet_id                 = azurerm_subnet.subnet_01.id
  network_security_group_id = azurerm_network_security_group.nsg_01.id
}

resource "azurerm_subnet_network_security_group_association" "nsg_01_association_02" {
  subnet_id                 = azurerm_subnet.subnet_02.id
  network_security_group_id = azurerm_network_security_group.nsg_01.id
}