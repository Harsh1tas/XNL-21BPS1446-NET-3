output "aws_vpc_peering_id" {
  value = aws_vpc_peering_connection.aws_to_gcp.id
}

output "gcp_vpc_peering_name" {
  value = google_compute_network_peering.gcp_to_aws.name
}

output "azure_vnet_peering_id" {
  value = azurerm_virtual_network_peering.azure_to_gcp.id
}

output "aws_vpn_connection_id" {
  value = aws_vpn_connection.aws_to_gcp.id
}

output "gcp_vpn_tunnel_name" {
  value = google_compute_vpn_tunnel.gcp_to_aws.name
}

