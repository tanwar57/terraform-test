resource "azurerm_resource_group" "rg" {
  count                       =  length(var.resource_group)
  name                        =  format("%s-rg", var.resource_group[count.index].name)
  location                    =  var.resource_group[count.index].location

  tags                        =  merge(
    {
      Name                    =  format("%s-rg", var.resource_group[count.index].name)
    },
    var.tags
  )
}
