# Networking and Connectivity

This document explains the networking setup, including VPC/VNet peering and VPN connectivity.

## **🔹 Components**
### **1. VPC Peering**
- AWS, GCP, and Azure VPCs are peered to enable cross-cloud communication.
- **Terraform File**: [`networking/peering.tf`](../networking/peering.tf)

### **2. VPN Connectivity**
- VPN tunnels are established between AWS, GCP, and Azure.
- **Terraform File**: [`networking/vpn.tf`](../networking/vpn.tf)

### **3. Cloud-Specific Networking**
- **AWS Networking**: [`networking/aws-network.tf`](../networking/aws-network.tf)
- **GCP Networking**: [`networking/gcp-network.tf`](../networking/gcp-network.tf)
- **Azure Networking**: [`networking/azure-network.tf`](../networking/azure-network.tf)

For networking issues, check the [Troubleshooting Guide](troubleshooting.md).

