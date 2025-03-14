# Security Policies

This document covers IAM roles, firewall rules, and Web Application Firewall (WAF) settings.

## **🔹 IAM Policies**
- IAM users, roles, and policies are defined in [`security/iam.tf`](../security/iam.tf).

## **🔹 Firewall Rules**
- Security groups and firewall rules for AWS, GCP, and Azure are configured in [`security/firewall.tf`](../security/firewall.tf).

## **🔹 Web Application Firewall (WAF)**
- AWS WAF, GCP Cloud Armor, and Azure WAF configurations are in [`security/waf.tf`](../security/waf.tf).

For security troubleshooting, refer to [Troubleshooting Guide](troubleshooting.md).
![graphviz (4)](https://github.com/user-attachments/assets/2911bc40-2fe6-47a0-906a-b6a92f770569)
