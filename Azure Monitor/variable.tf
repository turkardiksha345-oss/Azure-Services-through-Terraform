variable "log_analytics_workspace_name" {
  type    = string
  default = "demo-law"
}

variable "action_group_name" {
  type    = string
  default = "demo-action-group"
}

variable "alert_name" {
  type    = string
  default = "high-cpu-alert"
}

variable "alert_email" {
  type    = string
  default = "dikshaturkat2022@gmail.com"
}