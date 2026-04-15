# NSG ID
output "nsg_id" {
  value = azurerm_network_security_group.nsg.id
}

# NSG Name
output "nsg_name" {
  value = azurerm_network_security_group.nsg.name
}