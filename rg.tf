module "rg_naming" {
  source = "./modules/naming"

  environment = var.environment
  opco        = var.opco
  application = var.application
  role        = var.role
  number      = var.number
}

resource "azurerm_resource_group" "main_rg" {
  name     = module.rg_naming.name
  location = var.location
}