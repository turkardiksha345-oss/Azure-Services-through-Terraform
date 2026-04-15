# VM ID
output "vm_id" {
  value = azurerm_linux_virtual_machine.vm.id
}

# VM Name (optional but useful)
output "vm_name" {
  value = azurerm_linux_virtual_machine.vm.name
}