module "vnet" {
	source		   = "../modules/vnet/"
	vnet      	   = [
	{
	  name		   = "mytestvnet"
	  location     = "west us"
	  rg_name      =  split("/", module.resource_group.id[0])[4]
	  cidr         = ["10.0.0.0/16"]
	}
  ]
    tags           =  {
    Provisioner    =  "Terraform"
    Environment    =  "dev"
  }
}