resource "google_project_service" "cloud_identity_api" {
  project                    = var.project_id
  service                    = "cloudidentity.googleapis.com"
  disable_dependent_services = true
}
resource "google_project_service" "drive_api" {
  project                    = var.project_id
  service                    = "drive.googleapis.com"
  disable_dependent_services = true
}
resource "google_project_service" "ws_admin_api" {
  project                    = var.project_id
  service                    = "admin.googleapis.com"
  disable_dependent_services = true
}