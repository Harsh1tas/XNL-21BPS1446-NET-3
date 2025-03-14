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

https://dreampuf.github.io/GraphvizOnline/?engine=dot&compressed=CYSw5gTghgDgFgUgEwAYCyBXANgFxAYSwHsNgBBCAYzhBwFNKcMI7kUEB2AIQRTLYGpBAMWSjUAEToAzEADtWqSLESooOHBBAAjDPQDOvfkJPsl0eAgCsXaHIDWoCAgDMEgDIAlZPjbawlETEzm7ISFjgcDjaWBiKSNYSrjx8RoJmGWJZkjLyiihyRMD5%2BjgAnlh0hqmm6YXF1lz6cLCsbtpEAB4%2BbKUVbRKyWJXAPahDWIHBrklICUgu0ihLS2Fjy0RyOHJQALYDYQASdFgAbnR4lFBrSL7jmzj6IABeAwCMCVZJLin8NZm1JDicQoKSyBS9GAMECyShseolcqVarGAEZAAqdAg0GkRAgu0aWCg2hOMzCmOxUFx%2BLYAAoAJJQfAAShud2WIGGUzxZLmyBcAA4OPgAKIinh8r7JETZFAAZXsZS4sVY-3SbDIAHU5YTiaTQnMtTq%2Bbc2BNuSFZvMXMJhABOO0oMyfb4SszAtgAeTsYFVqPVqAA4vgAAq6klYXlIYNhk3s81BHkG60uAAsZAFVmMLulJg9QZYdDkaUBGTIz2YrBsRIjUfLlbZZs5k0TlpuLidHFt4hzPxlQLYyriJbRbAAchcAO54%2BzyMDh-VW-AQIj6fQAWkIJFGqAnOGnEFncnncabXNbUf5tvwKAFzsSufdsvckRw3qgx79AYycoYzFoZQLpGya-pQ-7lI24zNhal4LLaABsdpcKmaxSn2eayiG8j2CO35oJstB4nOQFRvhciEVox6QRy57TMm-LwamdpWCKVoPuhT4Dqg%2BB4nI0jEJOWJDl%2BpZsPg9L4Ek1Z6sBS70mIklsFhUIRAohinlBtFJmxCwClwdqpvBHCoa6-Ygi%2BYBRIG0BKiuk7FmqpboiuGAxFUcBEEQeBUdJtbJs5JBuc0nneSe8zxtBF70XBwhkCgHDZuxbrZOZr5ylAWC7JsuGloGtCHK5ZCMCAmyGL5i5hHlOAFdoGrFaV1EJnROkuPBlBWJQdDGZKpkYVxKAhswMCVDlaIAFJFkeZXKjJUYTQ48jqeFZ4ts17aMcxrEmY%2BKVibx-FEIJEDCWkjmjlxIJgnkbB0MAvq9EiVSjekt33TYfQjW4wBQM0t3rDB0WtfBwPA41DxPK8MxvOwaG-M9gL5qCuQQqgCIot%2BbAUjieIEn2Z3pEa0r46YMZE-6pb1iwZMY7uU4zsRePk2ioHgYBjM0%2BgBE4ERVHs6J3ESaZxMYi5QUeV5DNw-zKBVTVRV4A1fPnSg81TdTwtmWwV0oygr1PRrqBY1SONsOurgihq2okcmIYrqcIBPNlqCeFUJBUE9PXU9LRvUgSqBmy4FtBqG1tWrbRD247xbO67zCdUtSXwxiWLYzS-vmxqFZU%2BVslhOHkcldHKAu-obvx9t7MG3wVvp4H4504exE51GABqIbsiGdBYsRQJt2OCew0nbCk7XQcoHuB5HvOzfJm3Hdd5RJ7CH3A9C0zBNZ-kAdjxP9M%2BTNflWnPSkLz3y8hv3Fdw1Xu%2BN1Ro9sCzWgQTPVpP-kPG7LsGDkVcCvR72KWysn4AVNhnVAZEKJNwPhVOYkDubOFQEVeOq8vbK3gTzE8KBt6Y1FsicWoVQ5hDIDsLAZRIaoHpGuOIqDK7r1MOJRSD9DYp2NjSV%2BxC9BEF2OofIUhhpEDKPsLYtCgHfkYbMbB4Dq46g4XMfhxBAKoG5pbY0gCh4CyYVIuuwcwxyKQAowRbAVG6KvholAEiwE6L4JvIh8i6ACKUSgExNiGyezoRzSxzCZb5UKvVOQ00aywKQAAVX0PEROVcvHaLHqrRadjQnhLMakDgSRUh8CAA
