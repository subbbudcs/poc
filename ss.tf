module "naming" {
  source = "./modules/naming"

  environment = local.environment
  location    = local.location
  opco        = var.opco
  application = var.application
  role        = var.role
  number      = var.number
}

resource "azurerm_resource_group" "rg" {
  name     = module.naming.name
  location = local.location

  lifecycle {
    ignore_changes = [tags]
  }
}