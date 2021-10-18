resource "local_file" "AnsibleInventory" {
content = templatefile("inventory.tmpl",
        {
            lab-ip = linode_instance.lab.ip_address,
            lab-id = linode_instance.lab.label,
        }
    )
 filename = "../../ansible/lab_hosts"
}
