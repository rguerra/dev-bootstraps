
### REF. https://www.linkbynet.com/produce-an-ansible-inventory-with-terraform
resource "local_file" "k8s_vars" {
 content = templatefile("k8s-vars.tmpl",
 {
  cluster-id = digitalocean_kubernetes_cluster.mox13-k8s.endpoint,
  kube-master = digitalocean_kubernetes_cluster.mox13-k8s.id

 }
 )
 filename = "../../ansible/k8s_vars.yml"
}
