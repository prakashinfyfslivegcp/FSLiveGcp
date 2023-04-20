resource "azurerm_resource_group" "resource_group" {
  name     = var.rg_name
  location = var.location

   tags = merge(
    var.common_tags,
    {
       "env" = "${var.env}"
    }
  )
}