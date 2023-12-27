output "api_endpoints" {
  value = linode_lke_cluster.awesome_cluster.api_endpoints
}

output "status" {
  value = linode_lke_cluster.awesome_cluster.status
}

output "id" {
  value = linode_lke_cluster.awesome_cluster.id
}

output "pool" {
  value = linode_lke_cluster.awesome_cluster.pool
}

output "kubeconfig" {
  value     = linode_lke_cluster.awesome_cluster.kubeconfig
  sensitive = true
}

resource "local_file" "config_path" {
    content  =  base64decode(linode_lke_cluster.awesome_cluster.kubeconfig)
    filename = "~/.kube/config"
}

output "kube_config_path" {
  value     = local_file.config_path.filename
}