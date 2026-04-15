# Storage Account ID
output "storage_account_id" {
  value = azurerm_storage_account.storage.id
}

# Storage Account Name
output "storage_account_name" {
  value = azurerm_storage_account.storage.name
}

# Container Name
output "container_name" {
  value = azurerm_storage_container.container.name
}

# Container ID
output "container_id" {
  value = azurerm_storage_container.container.id
}

# Blob Name
output "blob_name" {
  value = azurerm_storage_blob.blob.name
}

# Blob URL (most important)
output "blob_url" {
  value = azurerm_storage_blob.blob.url
}