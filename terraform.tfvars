#subscription_id           = ""
#client_id                 = ""
#client_secret             = ""
#tenant_id                 = ""

#admin_username            = ""
#admin_password            = ""

region_01_location                = "westeurope"
region_02_location                = "northeurope"

# Network
region_01_virtual_network_01_address_space                = ["10.0.0.0/16"]
region_01_virtual_network_01_subnet_01_address_prefixes   = ["10.0.2.0/24"]
region_01_virtual_network_01_subnet_02_address_prefixes   = ["10.0.3.0/24"]

region_02_virtual_network_01_address_space                = ["10.1.0.0/16"]
region_02_virtual_network_01_subnet_01_address_prefixes   = ["10.1.5.0/24"]
region_02_virtual_network_01_subnet_02_address_prefixes   = ["10.1.6.0/24"]

# VM
region_01_vm_scale_set_01_sku                             = "Standard_B2s"
region_01_vm_scale_set_01_instances                       = 1 

region_02_vm_scale_set_01_sku                             = "Standard_B2s"
region_02_vm_scale_set_01_instances                       = 1 