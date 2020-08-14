variable "subnet" {
  type                              =  list(object({
    name                            =  string
    vnet_name                       =  string
    rg_name                         =  string
    cidr                            =  list(string)
    endpoints                       =  list(string)
  }))
  default                           =  [
    {
      name                          =  ""
      vnet_name                     =  ""
      rg_name                       =  ""
      cidr                          =  []
      endpoints                     =  ["Microsoft.AzureActiveDirectory"]
    }
  ]
}
