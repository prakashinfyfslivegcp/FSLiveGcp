module "rg" {
  source        = "../../Modules/rg/"
  rg_name       = "${var.project}-${var.env}-${var.loc}-rg-00"
  location      = var.location
  common_tags   = var.common_tags
  env           = var.env
}