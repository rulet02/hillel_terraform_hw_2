resource "google_compute_instance" "instance" {
  name         = var.instance_name
  machine_type = var.instance_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.instance_image
    }
  }

  network_interface {
    subnetwork = google_compute_address.internal.subnetwork
    network_ip = google_compute_address.internal.address
  }

  metadata_startup_script = "sudo apt update; sudo apt install nginx -y; curl -I 127.0.0.1"

}

resource "google_compute_address" "internal" {
  name         = var.internal_name
  region       = var.region
  subnetwork   = var.subnet_id
  address_type = var.address_type
  address      = var.instance_ip
}

resource "google_compute_disk" "ce_disk" {
  zone = var.zone
  name = var.name-disk
  size = var.disk-size
  type = var.disk-type
}

resource "google_compute_attached_disk" "default" {
  disk     = google_compute_disk.ce_disk.id
  instance = google_compute_instance.instance.id

}
