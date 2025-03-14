# CI/CD Pipeline Documentation

This document explains how Terraform CI/CD automation is implemented.

## **🔹 GitHub Actions**
- **Terraform CI**: Runs validation on pull requests ([`.github/workflows/terraform-ci.yml`](../.github/workflows/terraform-ci.yml)).
- **Deploy Infrastructure**: Auto-applies Terraform on `main` ([`.github/workflows/deploy-infra.yml`](../.github/workflows/deploy-infra.yml)).
- **Destroy Infrastructure**: Allows manual destroy ([`.github/workflows/destroy-infra.yml`](../.github/workflows/destroy-infra.yml)).

## **🔹 Jenkins**
- The pipeline is defined in [`cicd/Jenkinsfile`](../cicd/Jenkinsfile).
- Runs Terraform **init, validate, plan, and apply**.

For CI/CD issues, check [Troubleshooting Guide](troubleshooting.md).

![graphviz (7)](https://github.com/user-attachments/assets/f80ab1d0-c80f-4aaf-acb7-f8aa8c05c392)
