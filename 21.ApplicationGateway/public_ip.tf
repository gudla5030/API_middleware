/*
resource "azurerm_public_ip" "web_vm01_pip" {
  name = var.web_vm01_pip01
  allocation_method = "Dynamic"
  resource_group_name = azurerm_resource_group.rg01.name
  location = azurerm_resource_group.rg01.location
}
*/


## Bastion Public IP
resource "azurerm_public_ip" "bastion_pip" {
  name = "bastion001"
  allocation_method = "Static"
  resource_group_name = azurerm_resource_group.rg01.name
  location = azurerm_resource_group.rg01.location
  sku                 = "Standard"
}

## Public IP address for Standard LB

resource "azurerm_public_ip" "standard_LB" {
  name                = "frontend-pip"
  location            = azurerm_resource_group.rg01.location
  resource_group_name = azurerm_resource_group.rg01.name
  allocation_method   = "Static"
  sku                 = "Standard"
}