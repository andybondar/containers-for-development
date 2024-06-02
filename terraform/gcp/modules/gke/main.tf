resource "google_container_cluster" "primary" {
  project = var.project_name
  name = "${var.project_name}-k8s-clutser"
  location = var.region
  initial_node_count = var.node_count
  deletion_protection = false
  node_config {
    service_account = data.google_service_account.gke.email
    oauth_scopes = [
      "cloud-platform"
    ]
    labels = {}
    tags = []
  }

  timeouts {
    create = "30m"
    update = "40m"
  }
}

# resource "google_container_cluster" "primary" {
#   project = var.project_name
#   name = "${var.project_name}-k8s-clutser"
#   location = var.region
#   remove_default_node_pool = true
#   initial_node_count = 1
#   deletion_protection = false
# }

# resource "google_container_node_pool" "primary_nodes" {
#   project = var.project_name
#   name = "primary-pool"
#   location = var.region
#   cluster = google_container_cluster.primary.name
#   node_count = var.node_count

#   node_config {
#     preemptible = true
#     machine_type = var.machine_type
#     service_account = data.google_service_account.gke.email
#     oauth_scopes = [
#       "cloud-platform"
#     ]
#   }
# }

# output "gke-sa" {
#   value = data.google_service_account.gke.email
# }