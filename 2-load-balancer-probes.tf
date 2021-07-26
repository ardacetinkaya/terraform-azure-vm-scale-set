resource "azurerm_lb_probe" "region_02_load_balancer_01_probe_01" {
  resource_group_name = azurerm_resource_group.region_02.name
  loadbalancer_id     = azurerm_lb.region_02_load_balancer_01.id
  name                = "probe-01"
  port                = 80
  protocol            = "Http"
  request_path        = "/"
}