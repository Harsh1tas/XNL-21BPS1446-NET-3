provider "aws" {
  region = var.aws_region
}

provider "google" {
  project = var.gcp_project_id
}

provider "azurerm" {
  features {}
}

# AWS VPC Peering
resource "aws_vpc_peering_connection" "aws_to_gcp" {
  peer_vpc_id   = var.gcp_vpc_id
  vpc_id        = var.aws_vpc_id
  auto_accept   = true
  peer_owner_id = var.aws_account_id
}

resource "aws_vpc_peering_connection" "aws_to_azure" {
  peer_vpc_id   = var.azure_vnet_id
  vpc_id        = var.aws_vpc_id
  auto_accept   = true
  peer_owner_id = var.aws_account_id
}

# GCP VPC Peering
resource "google_compute_network_peering" "gcp_to_aws" {
  name         = "gcp-to-aws-peering"
  network      = var.gcp_vpc_name
  peer_network = var.aws_vpc_name
}

resource "google_compute_network_peering" "gcp_to_azure" {
  name         = "gcp-to-azure-peering"
  network      = var.gcp_vpc_name
  peer_network = var.azure_vnet_name
}

# Azure VNET Peering
resource "azurerm_virtual_network_peering" "azure_to_aws" {
  name                         = "azure-to-aws-peering"
  resource_group_name          = var.azure_resource_group
  virtual_network_name         = var.azure_vnet_name
  remote_virtual_network_id    = var.aws_vpc_id
}

resource "azurerm_virtual_network_peering" "azure_to_gcp" {
  name                         = "azure-to-gcp-peering"
  resource_group_name          = var.azure_resource_group
  virtual_network_name         = var.azure_vnet_name
  remote_virtual_network_id    = var.gcp_vpc_id
}

