locals {
  fd_name = "frontdoor-01-xt34"
}
resource "azurerm_frontdoor" "frontdoor_01" {
    name                                         = local.fd_name
    resource_group_name                          = azurerm_resource_group.region_01.name
    enforce_backend_pools_certificate_name_check = false

    frontend_endpoint {
        name      = local.fd_name
        host_name = "${local.fd_name}.azurefd.net"
    }

    backend_pool_load_balancing {
        name = "fd-load-balance"
    }

    backend_pool_health_probe {
        name                = "fd-health-probe"
        probe_method        = "HEAD"
        interval_in_seconds = 30
    }

    backend_pool {
        name = "fd-backend-pool-1"
        backend {
            host_header = azurerm_public_ip.public_ip_01.ip_address
            address     = azurerm_public_ip.public_ip_01.ip_address
            http_port   = 80
            https_port  = 443
        }

        load_balancing_name = "fd-load-balance"
        health_probe_name   = "fd-health-probe"
    }

    routing_rule {
        name               = "fd-routing-rule-01"
        accepted_protocols = ["Http"]
        patterns_to_match  = ["/*"]
        frontend_endpoints = [local.fd_name]
        forwarding_configuration {
            forwarding_protocol = "MatchRequest"
            backend_pool_name   = "fd-backend-pool-1"
        }
    }
}