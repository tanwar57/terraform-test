output "id" {
  description       =  "The id's of the VNet's"
  value             =  azurerm_virtual_network.vnet.*.id
}
