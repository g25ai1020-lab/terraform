resource "google_dns_managed_zone" "banking_zone" {
  name        = "banking-zone"
  dns_name    = "banking-vcc.net."
  description = "DNS zone for banking application"
}

resource "google_dns_record_set" "banking_a_record" {
  name         = "banking-vcc.net."
  type         = "A"
  ttl          = 300
  managed_zone = google_dns_managed_zone.banking_zone.name

  rrdatas = [
    google_compute_address.api_gw_lb_ip.address
  ]
}
