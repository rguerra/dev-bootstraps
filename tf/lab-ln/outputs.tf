resource "local_file" "AnsibleInventory" {
content = templatefile("inventory.tmpl",
        {
            lab-ip = linode_instance.lab.ipv4,
            lab-id = linode_instance.lab.id,
        }
    )
 filename = "../../ansible/lab_hosts"
}
