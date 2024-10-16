terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "2.29.1"
    }
    local = {
      source = "hashicorp/local"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.44.0"
    }
  }
}
provider "linode" {
  token = var.token
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}




