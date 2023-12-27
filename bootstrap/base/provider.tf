terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "2.11.0"
    }
    local = {
      source  = "hashicorp/local"
    }
  }
}
provider "linode" {
  token = var.token
}




