variable "env" {
  type                         =  string
  description                  =  "The environment name e.g. prod, stage, dev"
  default                      =  "dev"
}
variable "location" {
  type = string
  description                  =  "The location/region where the virtual network is created e.g. westeurope. Changing this forces a new resource to be created."
}

variable "short_location" {
  type                         =  map(string)
  default                      =  {
    "westeurope"               =  "euw"
    "westus"                   =  "usw"
    "eastus"                   =  "use"
  }
}

locals {
  common_prefix                =  format("tf-%s-%s", var.env, var.short_location[var.location])
}