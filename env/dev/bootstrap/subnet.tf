module "subnet" {
	source			= "../../../tf_modules/subnet"
	subnet 			= [
	{
	  name			= "subnet1"
	  rg_name       = split("/", module.resource_group.id[0])[4]
	  vnet_name 	= split("/", module.vnet.id[0])[8]
	  cidr			= ["10.0.1.0/24"]
	  endpoints     = ["Microsoft.AzureActiveDirectory"]
	},
	{
	  name			= "subnet2"
	  rg_name       = split("/", module.resource_group.id[0])[4]
	  vnet_name 	= split("/", module.vnet.id[0])[8]
	  cidr			= ["10.0.2.0/24"]
	  endpoints     = ["Microsoft.AzureActiveDirectory"]
	}
  ]
}