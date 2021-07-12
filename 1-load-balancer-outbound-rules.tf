resource "azurerm_lb_outbound_rule" "region_01_load_balancer_01_outbound_rule_01" {
  resource_group_name     = azurerm_resource_group.region_01.name
  loadbalancer_id         = azurerm_lb.region_01_load_balancer_01.id
  name                    = "OutboundRule"
  protocol                = "All"
  backend_address_pool_id = azurerm_lb_backend_address_pool.region_01_load_balancer_01_backend_address_pool_01.id

  frontend_ip_configuration {
    name = "PublicIPAddress"
  }
}