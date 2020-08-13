variable "resource_group" {
  type                              =  list(object({
    name                            =  string
    location                        =  string
  }))
  default                           =  [
    {
      name                          =  ""
      location                      =  ""
    }
  ]
}
variable "tags" {
  description                       =  "Tags"
  type                              =  map(string)
  default                           =  {
    "Provisioner"                   =  "Terraform"
  }
}
