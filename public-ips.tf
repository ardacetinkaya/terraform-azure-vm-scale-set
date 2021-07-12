resource "azurerm_public_ip" "public_ip_01" {
  name                = "public-ip-01"
  location            = azurerm_resource_group.azure_demo.location
  resource_group_name = azurerm_resource_group.azure_demo.name
  allocation_method   = "Static"
  domain_name_label   = random_string.fqdn.result
  sku                 = "Standard"

}

resource "random_string" "fqdn" {
  length  = 6
  special = false
  upper   = false
  number  = false
}

resource "azurerm_public_ip" "public_ip_02" {
  name                = "public-ip-02"
  location            = azurerm_resource_group.azure_demo.location
  resource_group_name = azurerm_resource_group.azure_demo.name
  allocation_method   = "Static"
  sku                 = "Standard"

}