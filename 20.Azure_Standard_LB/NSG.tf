resource "azurerm_network_security_group" "east_nsg01" {
  name                = "east-nsg01"
  location            = azurerm_resource_group.rg01.location
  resource_group_name = azurerm_resource_group.rg01.name

    security_rule {
    name                       = "Allow_All"
    priority                   = 500
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_subnet_network_security_group_association" "east_vnet01_privatesub01_association" {
  subnet_id                 = azurerm_subnet.private-subnet01.id
  network_security_group_id = azurerm_network_security_group.east_nsg01.id
}

resource "azurerm_subnet_network_security_group_association" "east_vnet01_publicesub01_association" {
  subnet_id                 = azurerm_subnet.public-subnet01.id
  network_security_group_id = azurerm_network_security_group.east_nsg01.id
}