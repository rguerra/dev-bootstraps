
resource "digitalocean_kubernetes_cluster" "mox13-k8s" {
  name   = "mox13-k8s"
  region = "nyc1"
  version = "1.19.12-do.0"

  node_pool {
    name       = "worker-pool"
    size       = "s-2vcpu-2gb"
    node_count = 1
  }
}

output "Kubernetes_master" {
  value = digitalocean_kubernetes_cluster.mox13-k8s.endpoint
}

