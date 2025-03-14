variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "gcp_project_id" {
  description = "GCP project ID"
}

variable "aws_vpc_id" {
  description = "AWS VPC ID"
}

variable "gcp_vpc_id" {
  description = "GCP VPC ID"
}

variable "azure_vnet_id" {
  description = "Azure Virtual Network ID"
}

variable "aws_vpn_ip" {
  description = "AWS VPN Gateway Public IP"
}

variable "vpn_shared_secret" {
  description = "Shared secret for VPN tunnels"
  sensitive   = true
}

