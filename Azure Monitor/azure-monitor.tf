# Log Analytics Workspace (Core of Azure Monitor)  (collect logs)
resource "azurerm_log_analytics_workspace" "law" {
  name                = var.log_analytics_workspace_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  retention_in_days   = var.retention_in_days
}

# Action Group (for alerts - email) (send notification)
resource "azurerm_monitor_action_group" "action" {
  name                = var.action_group_name
  resource_group_name = var.resource_group_name
  short_name          = var.short_name
  email_receiver {
    name          = "admin"
    email_address = var.alert_email 
  }
}

# Metric Alert (CPU usage example) (check condition)
resource "azurerm_monitor_metric_alert" "cpu_alert" {
  name                = var.alert_name
  resource_group_name = var.resource_group_name
  scopes              = [var.vm_id] # Add VM or resource ID here
  description         = "Alert when CPU usage is high"
  severity            = var.severity
  frequency           = var.frequency
  window_size         = var.window_size

  criteria {
    metric_namespace = "Microsoft.Compute/virtualMachines"
    metric_name      = "Percentage CPU"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = var.threshold
  }

  action {
    action_group_id = azurerm_monitor_action_group.action.id
  }
}