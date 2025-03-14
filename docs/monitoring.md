# Logging & Monitoring

This document explains the logging and monitoring setup across AWS, GCP, and Azure.

## **🔹 AWS CloudWatch**
- CloudWatch metrics and logs are configured in [`monitoring/cloudwatch.tf`](../monitoring/cloudwatch.tf).

## **🔹 GCP Stackdriver**
- Google Stackdriver logging and monitoring are set up in [`monitoring/stackdriver.tf`](../monitoring/stackdriver.tf).

## **🔹 Azure Monitor**
- Azure Monitor configurations are in [`monitoring/azure-monitor.tf`](../monitoring/azure-monitor.tf).

## **🔹 Alerts**
- Alerts for critical failures are defined in [`monitoring/alerts.tf`](../monitoring/alerts.tf).

Check the [Troubleshooting Guide](troubleshooting.md) for common monitoring issues.

![graphviz (5)](https://github.com/user-attachments/assets/a5a94164-4e35-4403-84e4-501bd321db4d)
