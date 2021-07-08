
terraform{
	required_providers {
		digitalocean = {
			source = "digitalocean/digitalocean"
			version = "2.10.1"

		}

	}

}

variable "do_token" {}
variable "pub_key" {}
variable "pvt_key" {}
variable "ssh_fingerprint" {}

provider "digitalocean" {
  token = var.do_token
}
