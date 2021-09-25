provider "azurerm" {
  features {

  }
}
resource "azurerm_resource_group" "terr_ressgrp" {
  name     = "terraresougrp1"
  location = "uksouth"
}
