variable "gke_service_account" {
  type = string
  description = "Service Account for GKE cluster"
  default = "gke-sa"
}

variable "node_count" {
  type = number
  description = "Initial node count in the Primary Pool"
  default = 1
}

variable "machine_type" {
  type = string
  description = "Node machine type"
  default = "e2-medium"
}