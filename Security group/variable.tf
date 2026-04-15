variable "nsg_name" {
  type    = string
  default = "demo-nsg"
}

variable "nsg_security_rule_name" {
  type    = string
  default = "demo-nsg-rule"
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}