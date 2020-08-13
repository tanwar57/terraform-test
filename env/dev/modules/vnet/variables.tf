variable "vnet" {
  type                              =  list(object({
    name                            =  string
    location                        =  string
    rg_name                         =  string
    cidr                            =  list(string)
  }))
  default                           =  [
    {
      name                          =   ""
      location                      =   ""
      rg_name                       =   ""
      cidr                          =   []
    }
  ]
}

variable "tags" {
  description                       =   "Tags"
  type                              =   map(string)
  default                           =   {
    "Provisioner"                   =   "Terraform"
  }
}
