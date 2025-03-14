output "cloudwatch_log_group_arn" {
  description = "CloudWatch Log Group ARN"
  value       = aws_cloudwatch_log_group.main.arn
}

output "gcp_logging_project_id" {
  description = "GCP Logging Project ID"
  value       = google_logging_project_sink.main.project
}

output "azure_monitor_workspace_id" {
  description = "Azure Monitor Log Analytics Workspace ID"
  value       = azurerm_log_analytics_workspace.monitor.id
}

