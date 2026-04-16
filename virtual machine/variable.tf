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

variable "network_interface_id" {
  type = string
}

variable "sku" {
  type    = string
  default = "22_04-lts"
}

variable "offer" {
  type    = string
  default = "0001-com-ubuntu-server-jammy"
}

variable "storage_account_type" {
  type    = string
  default = "Standard_LRS"
}