module "aws_alerts" {
  source         = "./cloudwatch.tf"
  aws_region     = var.aws_region
  log_retention_days = var.log_retention_days
}

module "gcp_alerts" {
  source         = "./stackdriver.tf"
  gcp_project_id = var.gcp_project_id
}

module "azure_alerts" {
  source               = "./azure-monitor.tf"
  azure_resource_group = var.azure_resource_group
}

