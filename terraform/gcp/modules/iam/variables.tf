variable "gke_service_account" {
  type = string
  description = "Service Account for GKE cluster"
  default = "gke-sa"
}