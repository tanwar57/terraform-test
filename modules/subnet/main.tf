resource "azurerm_subnet" "subnet" {
  count                               =  length(var.subnet)
  name                                =  format("%s-subnet", var.subnet[count.index].name)
  resource_group_name                 =  var.subnet[count.index].rg_name
  virtual_network_name                =  var.subnet[count.index].vnet_name
  address_prefixes                    =  var.subnet[count.index].cidr
  service_endpoints                   =  var.subnet[count.index].endpoints
}