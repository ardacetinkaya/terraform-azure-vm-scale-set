resource "azurerm_lb" "load_balancer_01" {
  name                = "load-balancer-01"
  location            = azurerm_resource_group.azure_demo.location
  resource_group_name = azurerm_resource_group.azure_demo.name
  sku                 = "Standard"

  frontend_ip_configuration {
    name                 = "PublicIPAddress"
    public_ip_address_id = azurerm_public_ip.public_ip_01.id
  }
}
