


resource "linode_instance" "lab" {
        image = "linode/ubuntu20.04"
        label = "Terraform-Web-Example"
        group = "Terraform"
        region = "us-east"
        type = "g6-standard-1"
        authorized_keys = [ 
	   chomp(file(var.pub_key))
	]

}

