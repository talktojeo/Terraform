provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "terr_resgroup1" {
  name = "res_group194758567"
  location = "uksouth"
}
