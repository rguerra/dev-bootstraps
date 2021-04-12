
resource "digitalocean_domain" "mox13" {
    name = "lab.mox13.com"
    ip_address = digitalocean_droplet.www-1.ipv4_address
}
