output "gateway_ip" {
  value = google_compute_subnetwork.subnet.gateway_address
}

output "subnet_id" {
  value = google_compute_subnetwork.subnet.id
}
