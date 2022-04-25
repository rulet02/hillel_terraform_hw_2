resource "google_compute_instance" "default" {
  name         = var.instance_name
  machine_type = var.instance_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.instance_image
    }
  }

  network_interface {
    network = var.vpc_name
    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = "sudo apt update; sudo apt install nginx -y; curl -I 127.0.0.1"

}

resource "google_storage_bucket" "static-site" {
  name     = var.bucket_name
  location = var.region

  force_destroy = true

  uniform_bucket_level_access = true
}
