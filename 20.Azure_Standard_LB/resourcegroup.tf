resource "azurerm_resource_group" "rg01" {
  name = "${local.environment}-${local.Bussiness_unit}-${var.rg01_name}"
  location = local.resource_location
  tags = local.comman_tags
}

resource "azurerm_resource_group" "rg02" {
  name = "${local.environment}-${local.Bussiness_unit}-${var.rg02_name}"
  location = local.resource_location
  tags = local.comman_tags
}


