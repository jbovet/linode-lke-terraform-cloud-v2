variable "token" {
  sensitive   = true
  description = "Your Linode API Access Token (required)"
  default     = ""
}

variable "github_token" {
  sensitive = true
  type      = string
  default   = ""
}

variable "github_org" {
  type    = string
  default = "jbovet"
}
variable "github_repository" {
  type    = string
  default = "awesome-cluster"
}
