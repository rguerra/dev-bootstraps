

resource "linode_sshkey" "foo" {
  label = "foo"
  ssh_key = chomp(file("~/.ssh/id_ed25519.pub"))
}

resource "linode_instance" "lab" {
        image = "linode/ubuntu20.04"
        label = "Terraform-Web-Example"
        group = "Terraform"
        region = "us-east"
        type = "g6-standard-1"
        authorized_keys = [ 
	   chomp(file(var.pub_key))
	]
        connection {
                host = self.ip_address
                user = "root"
                type = "ssh"
                private_key = file(var.pvt_key)
                timeout = "2m"
        }
        provisioner "remote-exec" {
        inline = [
                "export PATH=$PATH:/usr/bin",
                "sudo apt update",
                "sudo apt-get -y install python",
        ]
  }

}

