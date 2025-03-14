provider "google" {
  project = var.gcp_project_id
}

# Create GCP VPC
resource "google_compute_network" "vpc" {
  name                    = "gcp-main-vpc"
  auto_create_subnetworks = false
}

# Create GCP Subnet
resource "google_compute_subnetwork" "subnet" {
  name          = "gcp-subnet"
  network       = google_compute_network.vpc.self_link
  ip_cidr_range = var.gcp_subnet_cidr
  region        = var.gcp_region
}

# Create GCP Cloud Router
resource "google_compute_router" "router" {
  name    = "gcp-router"
  network = google_compute_network.vpc.self_link
  region  = var.gcp_region
}

# Create GCP Route Table
resource "google_compute_route" "default_route" {
  name       = "gcp-default-route"
  network    = google_compute_network.vpc.self_link
  dest_range = "0.0.0.0/0"
  next_hop_gateway = "default-internet-gateway"
}

