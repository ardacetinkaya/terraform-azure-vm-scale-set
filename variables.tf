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

variable "location" {
  type        = string
  description = "Location of resources"
}