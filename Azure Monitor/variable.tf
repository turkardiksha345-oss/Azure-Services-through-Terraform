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

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "vm_id" {
  type = string
}

variable "sku" {
  type    = string
  default = "PerGB2018"
}

variable "retention_in_days" {
  type    = number
  default = 30
}

variable "short_name" {
  type    = string
  default = "demo-short-name"
}

variable "threshold" {
  type    = number
  default = 50
}

variable "frequency" {
  type    = string
  default = "PT1M"
  
}

variable "window_size" {
  type    = string
  default = "PT5M"
}

variable "severity" {
  type    = number
  default = 3
}

