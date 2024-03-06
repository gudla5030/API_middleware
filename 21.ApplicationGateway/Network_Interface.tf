resource "azurerm_network_interface" "web-vm01-nic01" {
  name                = var.web_vm01_nic01
  location            = azurerm_resource_group.rg01.location
  resource_group_name = azurerm_resource_group.rg01.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.private-subnet01.id
    #subnet_id = "/subscriptions/f5507fb3-e5ac-410d-bcc4-cfa83191e4da/resourceGroups/Test-RG300/providers/Microsoft.Network/virtualNetworks/east-vNet01/subnets/private-subnet01"
    private_ip_address_allocation = "Dynamic"
    #public_ip_address_id    = azurerm_public_ip.web_vm01_pip.id
  }
}

resource "azurerm_network_interface" "web-vm02-nic01" {
  name                = "web-vm02-nic01"
  location            = azurerm_resource_group.rg01.location
  resource_group_name = azurerm_resource_group.rg01.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.private-subnet01.id
    #subnet_id = "/subscriptions/f5507fb3-e5ac-410d-bcc4-cfa83191e4da/resourceGroups/Test-RG300/providers/Microsoft.Network/virtualNetworks/east-vNet01/subnets/private-subnet01"
    private_ip_address_allocation = "Dynamic"
    #public_ip_address_id    = azurerm_public_ip.web_vm01_pip.id
  }
}

resource "azurerm_network_interface" "web-vm03-nic01" {
  name                = "web-vm03-nic01"
  location            = azurerm_resource_group.rg01.location
  resource_group_name = azurerm_resource_group.rg01.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.private-subnet01.id
    #subnet_id = "/subscriptions/f5507fb3-e5ac-410d-bcc4-cfa83191e4da/resourceGroups/Test-RG300/providers/Microsoft.Network/virtualNetworks/east-vNet01/subnets/private-subnet01"
    private_ip_address_allocation = "Dynamic"
    #public_ip_address_id    = azurerm_public_ip.web_vm01_pip.id
  }
}