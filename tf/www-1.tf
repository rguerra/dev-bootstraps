


# Create a new SSH key
resource "digitalocean_ssh_key" "default" {
  name       = "Terraform Example"
  public_key = file("~/.ssh/id_rsa.pub")
}
resource "digitalocean_droplet" "www-1" {
    image = "ubuntu-20-04-x64"
    name = "www-1"
    region = "nyc3"
    size = "s-4vcpu-8gb"
    private_networking = true
    ssh_keys = [
	digitalocean_ssh_key.default.fingerprint
    ]
  connection {
      host = self.ipv4_address
      user = "root"
      type = "ssh"
      private_key = file(var.pvt_key)
      timeout = "2m"
  }
  provisioner "remote-exec" {
    inline = [
      "export PATH=$PATH:/usr/bin",
      # install nginx
      #"sudo apt-get update",
      #"sudo apt-get -y install nginx"
    ]
  }
}
