module "rg" {
  source = "./Resource group"
}

module "vnet" {
  source = "./Virtual Network"
}

module "nsg" {
  source = "./Security group"
}

module "vm" {
  source = "./virtual machine"
}

module "storage" {
  source = "./Blob Storage"
}

module "monitor" {
  source = "./Azure Monitor"
}