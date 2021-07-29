
resource "digitalocean_container_registry" "mox13-registry" {
  name = "mox13-registry"
  subscription_tier_slug = "basic"
}


output "Registry_endpoint" {
  value = digitalocean_container_registry.mox13-registry.endpoint
}

