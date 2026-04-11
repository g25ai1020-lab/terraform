resource "google_compute_address" "api_gw_lb_ip" {
  name   = "api-gateway-lb-ip"
  region = var.region
}
