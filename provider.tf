terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"

    }
  }
}
# THE BELOW IS THE AUTHENTICATION MECHANISM WITH HOW TERRAFORM WILL INTERACT WITH AZURE
provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy = false
    }
  }
  client_id       = var.client_id
  client_secret   = var.client_secret
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}

# AUTHENTICATION VARIABLE

variable "client_id" {
  default = "a655d18d-0799-4434-93c0-dd8cfb737b7d"
}
variable "client_secret" {
  default = "Gvo7Q~MtPqkX4M5MelH9KsY4TWnPOCDnn3mQj"
}
variable "subscription_id" {
  default = "74e06804-1e02-43fc-83f2-c2ce23048ad0"
}
variable "tenant_id" {
  default = "14a4d975-55fd-4d44-89f7-c826ac68f929"
}
#############################################
