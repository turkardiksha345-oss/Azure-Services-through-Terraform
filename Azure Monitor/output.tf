# Log Analytics Workspace ID
output "log_analytics_workspace_id" {
  value = azurerm_log_analytics_workspace.law.id
}

# Log Analytics Workspace Name
output "log_analytics_workspace_name" {
  value = azurerm_log_analytics_workspace.law.name
}

# Action Group ID
output "action_group_id" {
  value = azurerm_monitor_action_group.action.id
}

# Action Group Name
output "action_group_name" {
  value = azurerm_monitor_action_group.action.name
}

# Metric Alert ID
output "metric_alert_id" {
  value = azurerm_monitor_metric_alert.cpu_alert.id
}

# Metric Alert Name
output "metric_alert_name" {
  value = azurerm_monitor_metric_alert.cpu_alert.name
}