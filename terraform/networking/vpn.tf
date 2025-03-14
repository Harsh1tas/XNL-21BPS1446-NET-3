# AWS VPN Gateway
resource "aws_vpn_gateway" "aws_vpn" {
  vpc_id = var.aws_vpc_id
}

# AWS VPN Connection to GCP
resource "aws_vpn_connection" "aws_to_gcp" {
  vpn_gateway_id = aws_vpn_gateway.aws_vpn.id
  customer_gateway_id = var.gcp_customer_gateway_id
  type = "ipsec.1"
}

# AWS VPN Connection to Azure
resource "aws_vpn_connection" "aws_to_azure" {
  vpn_gateway_id = aws_vpn_gateway.aws_vpn.id
  customer_gateway_id = var.azure_customer_gateway_id
  type = "ipsec.1"
}

# GCP VPN Gateway
resource "google_compute_vpn_gateway" "gcp_vpn" {
  name    = "gcp-vpn-gateway"
  network = var.gcp_vpc_name
}

# GCP VPN Tunnel to AWS
resource "google_compute_vpn_tunnel" "gcp_to_aws" {
  name        = "gcp-to-aws-tunnel"
  peer_ip     = var.aws_vpn_ip
  shared_secret = var.vpn_shared_secret
}

# Azure VPN Gateway
resource "azurerm_virtual_network_gateway" "azure_vpn" {
  name                = "azure-vpn-gateway"
  resource_group_name = var.azure_resource_group
  location            = var.azure_region
  sku                 = "VpnGw2"
}

# Azure VPN Connection to AWS
resource "azurerm_virtual_network_gateway_connection" "azure_to_aws" {
  name                = "azure-to-aws-connection"
  virtual_network_gateway_id = azurerm_virtual_network_gateway.azure_vpn.id
  peer_ip             = var.aws_vpn_ip
  shared_key          = var.vpn_shared_secret
}
