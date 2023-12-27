variable "token" {
  description = "Your Linode API Access Token (required)"
}

variable "nodes_count" {
  description = "Worker nodes count(required)"
  default     = "3"
}

variable "k8s_version" {
  description = "The Kubernetes version to use for this cluster. (required)"
  default     = "1.28"
}

variable "label" {
  description = "The unique label to assign to this cluster. (required)"
  default     = "awesome_cluster"
}

variable "region" {
  description = "The region where your cluster will be located. (required)"
  default     = "us-mia"
}

variable "tags" {
  description = "Tags to apply to your cluster for organizational purposes. (optional)"
  type        = list(string)
  default     = ["awesome_cluster", "labs", "k8s"]
}
variable "conn_throttle" {
  description = "Throttle connections per second (0-20). Set to 0 (default) to disable throttling (optional)"
  default     = "20"
}

variable "pools" {
  description = "The Node Pool specifications for the Kubernetes cluster. (required)"
  type = list(object({
    type  = string
    count = number
  }))
  default = [
    {
      type  = "g6-standard-1"
      count = 3
    }
  ]
}

variable "kubeconfig" {
  type    = string
  default = "~/.kube/config"
}