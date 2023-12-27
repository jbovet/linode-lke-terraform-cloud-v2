data "linode_instances" "awesome_cluster" {
  filter {
    name   = "id"
    values = local.lke_node_ids
  }
}

resource "random_string" "id" {
  length = 6
  lower = true
  upper = false
  special = false  
  numeric = false
}