resource "google_storage_bucket" "gcr_bucket" {
  name          = "${var.project_id}-gcr-artifacts"
  location      = upper(var.region)
  force_destroy = true
}
