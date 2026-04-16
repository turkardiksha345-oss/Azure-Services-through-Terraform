variable "storage_account_name" {
  type    = string
  default = "demostorageacct12345"
}

variable "container_name" {
  type    = string
  default = "demo-container"
}

variable "blob_name" {
  type    = string
  default = "sample-file.zip"
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "account_tier" {
  type    = string
  default = "Standard"
  
}
variable "account_replication_type" {
  type    = string
  default = "LRS" 
}

