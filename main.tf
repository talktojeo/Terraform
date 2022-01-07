resource "azurerm_resource_group" "this" {
  name = "rs_grp_1"
  location = "uksouth"
}

resource "azurerm_virtual_network" "this" {
  name = "vnet1"
  address_space = [ "10.0.0.1" ]
  resource_group_name = azurerm_resource_group.this.name
  location = azurerm_resource_group.this.location
}
