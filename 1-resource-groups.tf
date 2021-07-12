resource "azurerm_resource_group" "region_01" {
  name     = "demo-region-01-resources"
  location = var.region_01_location
}
