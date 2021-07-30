
### REF. https://www.linkbynet.com/produce-an-ansible-inventory-with-terraform
resource "local_file" "AnsibleInventory" {
 content = templatefile("inventory.tmpl",
 {
  lab-ip = digitalocean_droplet.lab.ipv4_address,
  lab-id = digitalocean_droplet.lab.id,
 }
 )
 filename = "../../ansible/lab_hosts"
}
