
resource "azurerm_resource_group" "terr_crtresou" {
  for_each = var.res_names
  name = each.key
  location = "uksouth"
}
data "azurerm_virtual_machine" "fx_vm_id" {
  # for_each = var.vmlists
  name = "win10"
  resource_group_name = "RES_ANSIBLE"
  }
  output "terrout" {
    value = data.azurerm_virtual_machine.fx_vm_id.id
  }

 
 

