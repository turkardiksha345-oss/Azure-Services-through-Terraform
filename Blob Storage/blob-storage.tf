# Storage Account
resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name # must be globally unique
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

 # allow_blob_public_access = false
}

# Storage Container
resource "azurerm_storage_container" "container" {
  name                  = var.container_name
  storage_account_id    = azurerm_storage_account.storage.id
  container_access_type = "private"
}

# Upload Blob (File)
resource "azurerm_storage_blob" "blob" {
  name                   = var.blob_name
  storage_account_name   = azurerm_storage_account.storage.name
  storage_container_name = azurerm_storage_container.container.name
  type                   = "Block"
  source                 = var.blob_name # file must exist in same folder
}
