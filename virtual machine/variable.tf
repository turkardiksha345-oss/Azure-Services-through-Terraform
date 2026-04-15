variable "vm_size" {
  type    = string
  default = "Standard_B1s"
}

variable "admin_username" {
  type    = string
  default = "azureuser"
}

variable "admin_password" {
  type    = string
  default = "admin@1234"
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}