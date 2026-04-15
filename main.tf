module "rg" {
  source = "./Resource group"
}

module "nsg" {
  source = "./Security group"

  resource_group_name = module.rg.rg_name
  location            = module.rg.rg_location
}

module "vnet" {
  source = "./Virtual Network"

  resource_group_name = module.rg.rg_name
  location            = module.rg.rg_location
  nsg_id              = module.nsg.nsg_id
}

module "vm" {
  source = "./virtual machine"

  resource_group_name   = module.rg.rg_name
  location              = module.rg.rg_location
  network_interface_id  = module.vnet.nic_id
}

module "storage" {
  source = "./Blob Storage"

  resource_group_name = module.rg.rg_name
  location            = module.rg.rg_location
}

module "monitor" {
  source = "./Azure Monitor"
 
  resource_group_name = module.rg.rg_name
  location            = module.rg.rg_location
  vm_id               = module.vm.vm_id
}