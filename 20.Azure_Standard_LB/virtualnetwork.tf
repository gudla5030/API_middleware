## East virtualnetwork 01
resource "azurerm_virtual_network" "east_vnet01" {
  name                = "${local.environment}-${local.Bussiness_unit}-${var.east_vnet01_name}"
  address_space       = var.east_vnet01_CIDR
  location            = azurerm_resource_group.rg01.location
  resource_group_name = azurerm_resource_group.rg01.name
}


resource "azurerm_subnet" "private-subnet01" {
  name                 = var.east_vnet01_private_subnet01
  resource_group_name  = azurerm_resource_group.rg01.name
  virtual_network_name = azurerm_virtual_network.east_vnet01.name
  address_prefixes     = var.east_vnet01_private_subnet01_CIDR

}

resource "azurerm_subnet" "public-subnet01" {
  name                 = var.east_vnet01_public_subnet01
  resource_group_name  = azurerm_resource_group.rg01.name
  virtual_network_name = azurerm_virtual_network.east_vnet01.name
  address_prefixes     = var.east_vnet01_public_subnet01_CIDR

}

resource "azurerm_subnet" "bastion_subnet01" {
  name                 = "AzureBastionSubnet"
  resource_group_name  = azurerm_resource_group.rg01.name
  virtual_network_name = azurerm_virtual_network.east_vnet01.name
  address_prefixes     = ["172.16.100.0/24"]

}



resource "azurerm_virtual_network" "east_vnet02" {
  name                = "${local.environment}-${local.Bussiness_unit}-east02"
  address_space       = ["192.168.0.0/16"]
  location            = azurerm_resource_group.rg01.location
  resource_group_name = azurerm_resource_group.rg01.name
}


resource "azurerm_subnet" "vnet01private-subnet01" {
  name                 = var.east_vnet01_private_subnet01
  resource_group_name  = azurerm_resource_group.rg01.name
  virtual_network_name = azurerm_virtual_network.east_vnet02.name
  address_prefixes     = ["192.168.1.0/24"]

}

resource "azurerm_subnet" "vnet02public-subnet01" {
  name                 = var.east_vnet01_public_subnet01
  resource_group_name  = azurerm_resource_group.rg01.name
  virtual_network_name = azurerm_virtual_network.east_vnet02.name
  address_prefixes     = ["192.168.2.0/24"]

}
