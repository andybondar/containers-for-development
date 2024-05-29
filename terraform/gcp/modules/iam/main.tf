resource "google_service_account" "gke-sa" {
  project = var.project_name
  account_id = var.gke_service_account
  display_name = "GKE SA"
}