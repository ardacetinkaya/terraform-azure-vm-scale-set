variable "subscription_id" {
  type        = string
  description = "Azure subscription id"
}

variable "client_id" {
  type        = string
  description = "Client Id of the service principal used in terraform"
}

variable "client_secret" {
  type        = string
  description = "Client Secret of the service principal used in terraform"
}

variable "tenant_id" {
  type        = string
  description = "Tenant Id of the service principal used in terraform"
}

variable "admin_username" {
  type        = string
  description = "VMs admin username"
}

variable "admin_password" {
  type        = string
  description = "VMs admin password"
}

variable "region_01_location" {
  type        = string
  description = "Location of resources"
}

variable "region_02_location" {
  type        = string
  description = "Location of resources"
}

variable "region_01_virtual_network_01_address_space" {
  type        = list
  description = "Address space of virtual network #1"
}

variable "region_01_virtual_network_01_subnet_01_address_prefixes" {
  type        = list
  description = "Address space of virtual network #1's subnet #1"
}

variable "region_01_virtual_network_01_subnet_02_address_prefixes" {
  type        = list
  description = "Address space of virtual network #1's subnet #2"
}

variable "region_01_vm_scale_set_01_sku" {
  type        = string
  description = "SKU of VM Scale set"
}

variable "region_01_vm_scale_set_01_instances" {
  type        = number
  description = "Instance count"
}

variable "region_02_virtual_network_01_address_space" {
  type        = list
  description = "Address space of virtual network #1"
}

variable "region_02_virtual_network_01_subnet_01_address_prefixes" {
  type        = list
  description = "Address space of virtual network #1's subnet #1"
}

variable "region_02_virtual_network_01_subnet_02_address_prefixes" {
  type        = list
  description = "Address space of virtual network #1's subnet #2"
}

variable "region_02_vm_scale_set_01_sku" {
  type        = string
  description = "SKU of VM Scale set"
}

variable "region_02_vm_scale_set_01_instances" {
  type        = number
  description = "Instance count"
}