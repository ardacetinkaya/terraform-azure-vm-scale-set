resource "azurerm_public_ip" "region_02_public_ip_01" {
  name                = "public-ip-01"
  location            = azurerm_resource_group.region_02.location
  resource_group_name = azurerm_resource_group.region_02.name
  allocation_method   = "Static"
  domain_name_label   = random_string.region_02_fqdn.result
  sku                 = "Standard"

}

resource "random_string" "region_02_fqdn" {
  length  = 6
  special = false
  upper   = false
  number  = false
}

resource "azurerm_public_ip" "region_02_public_ip_02" {
  name                = "public-ip-02"
  location            = azurerm_resource_group.region_02.location
  resource_group_name = azurerm_resource_group.region_02.name
  allocation_method   = "Static"
  sku                 = "Standard"

}