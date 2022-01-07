resource "azurerm_resource_group" "this" {
  name = "rs_grp_1"
  location = "uksouth"
}

resource "azurerm_virtual_network" "this" {
  name = "vnet1"
  address_space = [ "10.0.0.0/16" ]
  resource_group_name = azurerm_resource_group.this.name
  location = azurerm_resource_group.this.location
  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }
  tags = {
    "env" = "dev"
  }
  depends_on = [
    azurerm_resource_group.this
  ]
}
