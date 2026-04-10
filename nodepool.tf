resource "google_container_node_pool" "primary_nodes" {
  name     = "primary-pool"
  cluster  = google_container_cluster.gke.name
  location = var.zone

  node_count = var.node_count

  node_config {
    machine_type = var.machine_type
    oauth_scopes = ["https://www.googleapis.com/auth/cloud-platform"]
    tags         = ["terraform"]
  }
}
