# Log Analytics Workspace (Core of Azure Monitor)  (collect logs)
resource "azurerm_log_analytics_workspace" "law" {
  name                = var.log_analytics_workspace_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

# Action Group (for alerts - email) (send notification)
resource "azurerm_monitor_action_group" "action" {
  name                = var.action_group_name
  resource_group_name = var.resource_group_name
  short_name          = "demoAG"

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
  severity            = 3
  frequency           = "PT1M"
  window_size         = "PT5M"

  criteria {
    metric_namespace = "Microsoft.Compute/virtualMachines"
    metric_name      = "Percentage CPU"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 50
  }

  action {
    action_group_id = azurerm_monitor_action_group.action.id
  }
}