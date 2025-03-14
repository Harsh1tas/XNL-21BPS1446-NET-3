provider "google" {
  project = var.project_id
  region  = var.gcp_region
}

resource "google_compute_network" "vpc_network" {
  name                    = "gcp-multicloud-vpc"
  auto_create_subnetworks = "false"
}

resource "google_compute_instance" "vm_instance" {
  name         = "gcp-instance"
  machine_type = var.machine_type
  zone         = var.gcp_zone
  boot_disk {
    initialize_params {
      image = var.image
    }
  }
}

