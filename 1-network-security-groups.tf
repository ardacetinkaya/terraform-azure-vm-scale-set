resource "azurerm_network_security_group" "region_01_nsg_01" {
  name                = "nsg01"
  location            = azurerm_resource_group.region_01.location
  resource_group_name = azurerm_resource_group.region_01.name
}

resource "azurerm_subnet_network_security_group_association" "region_01_nsg_01_association_01" {
  subnet_id                 = azurerm_subnet.region_01_virtual_network_01_subnet_01.id
  network_security_group_id = azurerm_network_security_group.region_01_nsg_01.id
}

resource "azurerm_subnet_network_security_group_association" "region_01_nsg_01_association_02" {
  subnet_id                 = azurerm_subnet.region_01_virtual_network_01_subnet_02.id
  network_security_group_id = azurerm_network_security_group.region_01_nsg_01.id
}