
resource "digitalocean_domain" "mox13" {
    name = "lab.mox13.com"
    ip_address = digitalocean_droplet.lab.ipv4_address
}
