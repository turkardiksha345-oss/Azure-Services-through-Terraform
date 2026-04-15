# Virtual Network
output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

# Subnet
output "subnet_name" {
  value = azurerm_subnet.subnet.name
}
# VNet ID
output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

# Subnet ID
output "subnet_id" {
  value = azurerm_subnet.subnet.id
}

# Network Interface ID
output "nic_id" {
  value = azurerm_network_interface.nic.id
}

# Public IP Address
output "public_ip_address" {
  value = azurerm_public_ip.pip.ip_address
}
