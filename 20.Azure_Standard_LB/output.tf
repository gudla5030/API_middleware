output "rg01_name" {
  value = azurerm_resource_group.rg01.name
}

output "rg01_id" {
  value = azurerm_resource_group.rg01.id
}

output "eastvnet01" {
  value = azurerm_virtual_network.east_vnet01.id
}

output "eastvnet01_subnets" {
  value = azurerm_virtual_network.east_vnet01.subnet
}