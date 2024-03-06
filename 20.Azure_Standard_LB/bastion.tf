resource "azurerm_bastion_host" "bastion01" {
  name                = "eastvnet01-bastion01"
  location            = azurerm_resource_group.rg01.location
  resource_group_name = azurerm_resource_group.rg01.name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = azurerm_subnet.bastion_subnet01.id
    public_ip_address_id = azurerm_public_ip.bastion_pip.id
  }
}