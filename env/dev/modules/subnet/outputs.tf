output "id" {
  description       =  "The id's of Subnets"
  value             =  azurerm_subnet.subnet.*.id
}
output "name" {
  description       =  "The id's of Subnets"
  value             =  azurerm_subnet.subnet.*.name
}
output "address_prefixes" {
  description       =  "The id's of Subnets"
  value             =  azurerm_subnet.subnet.*.address_prefixes
}
