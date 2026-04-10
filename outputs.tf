output "cluster_name" {
  value = google_container_cluster.gke.name
}

output "endpoint" {
  value = google_container_cluster.gke.endpoint
}

output "client_certificate" {
  sensitive = true
  value     = google_container_cluster.gke.master_auth[0].client_certificate
}
