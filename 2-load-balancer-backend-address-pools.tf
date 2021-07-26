resource "azurerm_lb_backend_address_pool" "region_02_load_balancer_01_backend_address_pool_01" {
  loadbalancer_id = azurerm_lb.region_02_load_balancer_01.id
  name            = "lb-backend-address-pool-01"
}