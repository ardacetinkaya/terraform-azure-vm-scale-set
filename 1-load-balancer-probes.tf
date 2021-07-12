resource "azurerm_lb_probe" "region_01_load_balancer_01_probe_01" {
  resource_group_name = azurerm_resource_group.region_01.name
  loadbalancer_id     = azurerm_lb.region_01_load_balancer_01.id
  name                = "probe-01"
  port                = 80
  protocol            = "Http"
  request_path        = "/"
}