resource "azurerm_log_analytics_workspace" "monitor" {
  name                = "azure-log-workspace"
  location            = "East US"
  resource_group_name = var.azure_resource_group
  sku                 = "PerGB2018"
  retention_in_days   = var.log_retention_days
}

resource "azurerm_monitor_metric_alert" "cpu_alert" {
  name                = "high-cpu-alert"
  resource_group_name = var.azure_resource_group
  scopes              = [azurerm_virtual_machine.vm.id]
  criteria {
    metric_namespace = "Microsoft.Compute/virtualMachines"
    metric_name      = "Percentage CPU"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 80
  }
  action {
    action_group_id = azurerm_monitor_action_group.alerts.id
  }
}

resource "azurerm_monitor_action_group" "alerts" {
  name                = "monitor-alert-group"
  resource_group_name = var.azure_resource_group
  short_name          = "monitor_alerts"
  email_receiver {
    name          = "admin-alerts"
    email_address = "admin@example.com"
  }
}

