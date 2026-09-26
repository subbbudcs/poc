module "naming" {
  source = "./modules/naming"

  environment = var.environment
  opco        = var.opco
  application = var.application
  role        = var.role
  number      = var.number
}

resource "azurerm_resource_group" "rg" {
  name     = module.naming.name
  location = var.location

  lifecycle {
    ignore_changes = [tags]
  }
}