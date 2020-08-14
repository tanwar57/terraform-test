resource "azurerm_virtual_network" "vnet" {
  count                           =  length(var.vnet)
  name                            =  format("%s-vnet", var.vnet[count.index].name)
  resource_group_name             =  var.vnet[count.index].rg_name
  location                        =  var.vnet[count.index].location
  address_space                   =  var.vnet[count.index].cidr
  tags                            =  merge(
    {
      Name                        = format("%s-vnet", var.vnet[count.index].name)
    },
    var.tags
  )
}
