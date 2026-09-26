module "rg_erpbos" {
  source = "./modules/naming"

  environment = local.environment
  location    = local.location
  opco        = var.opco
  application = "erpbos" # Hardcoded string as requested
  role        = "db"     # Hardcoded string as requested
  number      = var.number
}

resource "azurerm_resource_group" "rg_erpbos" {
  name     = module.rg_erpbos.name
  location = local.location


  lifecycle {
    ignore_changes = [tags]
  }
}