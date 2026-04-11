resource "google_container_node_pool" "primary_nodes" {
  name       = "primary-pool"
  cluster    = google_container_cluster.gke.name
  location   = var.zone

  autoscaling {
    min_node_count = 1
    max_node_count = 3
  }

  node_config {
    machine_type = "e2-medium"
    disk_size_gb = 50
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
    tags = ["allow-ssh", "allow-iap", "gke-nodes"]
  }

  management {
    auto_upgrade = true
    auto_repair  = true
  }
}
