locals {
  rg_name = lower(
    format(
      "rg-%s%s%s%s%s",
      var.environment,
      var.opco,
      var.application,
      var.role,
      var.number
    )
  )
}