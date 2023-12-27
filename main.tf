module "base" {
  source = "./bootstrap/base"
  token  = var.token
}

module "flux" {
  source            = "./bootstrap/flux"
  github_org        = var.github_org
  github_repository = var.github_repository
  github_token      = var.github_token
  kube_config_path  = module.base.kube_config_path
}
