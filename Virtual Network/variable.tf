variable "vnet_name" {
  type    = string
  default = "demo-vnet"
}

variable "vnet_address_space" {
  type    = list(string)
  default = ["10.0.0.0/16"]
}

variable "subnet_address_prefixes" {
  type    = list(string)
  default = ["10.0.1.0/24"]
}

variable "subnet_name" {
  type    = string
  default = "demo-subnet"
}

variable "public_ip_name" {
  type    = string
  default = "demo-pip"
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}