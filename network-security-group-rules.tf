resource "azurerm_network_security_rule" "nsg_01_rule_01" {
    name                        = "nsg01rule-https"
    priority                   = 1000  
    direction                  = "Inbound"  
    access                     = "Allow"  
    protocol                   = "Tcp"  
    source_port_range          = "*"  
    destination_port_range     = "443"  
    source_address_prefix      = "*"  
    destination_address_prefix = "*"  
    resource_group_name         = azurerm_resource_group.azure_demo.name
    network_security_group_name = azurerm_network_security_group.nsg_01.name
}

resource "azurerm_network_security_rule" "nsg_01_rule_02" {
    name                        = "nsg01rule02-rdp"
    priority                    = 1100  
    direction                   = "Inbound"  
    access                      = "Allow"  
    protocol                    = "Tcp"  
    source_port_range           = "*"  
    destination_port_range      = "3389"  
    source_address_prefix       = "*"  
    destination_address_prefix  = "*" 
    resource_group_name         = azurerm_resource_group.azure_demo.name
    network_security_group_name = azurerm_network_security_group.nsg_01.name
}

resource "azurerm_network_security_rule" "nsg_01_rule_03" {
    name                        = "nsg01rule03-http"
    priority                    = 1200  
    direction                   = "Inbound"
    access                      = "Allow"    
    protocol                    = "Tcp"
    source_port_range           = "*"
    destination_port_range      = "80"
    source_address_prefix       = "*"
    destination_address_prefix  = "*"
    resource_group_name         = azurerm_resource_group.azure_demo.name
    network_security_group_name = azurerm_network_security_group.nsg_01.name
}