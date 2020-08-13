module "resource_group" {
	source		    = "../modules/resource_group"
	resource_group  = [
	{
	  name		    = "testresourcenet57"
	  location	    = var.location
	}
  ]
    tags            =  {
      Provisioner   =  "Terraform"
      Environment   =  var.env
    }
}