output "id" {
   description       =  "The id's of Resource Groups"
   value             =  azurerm_resource_group.rg.*.id
}
output "name" {
   description       =  "Names of Resource Groups"
   value             =  azurerm_resource_group.rg.*.name
}
output "location" {
   description       =  "Location of Resource Groups"
   value             =  azurerm_resource_group.rg.*.location
}
