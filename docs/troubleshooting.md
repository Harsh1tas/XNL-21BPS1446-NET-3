# Troubleshooting Guide

This guide helps diagnose and resolve common issues.

## **🔹 Terraform Issues**
### Error: `terraform init` fails
**Solution:** Ensure Terraform version **1.5.0** is installed.

### Error: `terraform apply` fails
**Solution:** Check the backend state file for conflicts.

## **🔹 Networking Issues**
### Error: Cross-cloud VPC connectivity issues
**Solution:** Verify peering connections in [`networking/peering.tf`](../networking/peering.tf).

## **🔹 Security Issues**
### Error: Access denied to resources
**Solution:** Validate IAM roles in [`security/iam.tf`](../security/iam.tf).


For more troubleshooting tips, visit the [GitHub Issues Page](../../issues).

![graphviz (6)](https://github.com/user-attachments/assets/fe5bfb7c-df42-465e-8cc7-86c7c4c73905)
