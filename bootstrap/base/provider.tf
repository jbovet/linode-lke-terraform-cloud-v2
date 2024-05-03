terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "2.19.0"
    }
    local = {
      source = "hashicorp/local"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.31.0"
    }
  }
}
provider "linode" {
  token = var.token
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}




