resource "azurerm_lb_outbound_rule" "load_balancer_01_outbount_rule_01" {
  resource_group_name     = azurerm_resource_group.azure_demo.name
  loadbalancer_id         = azurerm_lb.load_balancer_01.id
  name                    = "OutboundRule"
  protocol                = "All"
  backend_address_pool_id = azurerm_lb_backend_address_pool.backend_address_pool_01.id

  frontend_ip_configuration {
    name = "PublicIPAddress"
  }
}