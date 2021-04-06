
### REF. https://www.linkbynet.com/produce-an-ansible-inventory-with-terraform
resource "local_file" "AnsibleInventory" {
 content = templatefile("inventory.tmpl",
 {
  www-1-ip = digitalocean_droplet.www-1.ipv4_address,
  www-1-id = digitalocean_droplet.www-1.id,
 }
 )
 filename = "../ansible/hosts"
}
