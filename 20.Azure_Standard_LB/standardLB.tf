resource "azurerm_lb" "east_standardLB" {
  name                = "east-l4-lb"
  location            = azurerm_resource_group.rg01.location
  resource_group_name = azurerm_resource_group.rg01.name
  sku = "Standard"

  frontend_ip_configuration {
    name                 = "primary"
    public_ip_address_id = azurerm_public_ip.standard_LB.id
  }
}

resource "azurerm_lb_backend_address_pool" "east_standardLB_pool" {
  loadbalancer_id = azurerm_lb.east_standardLB.id
  name            = "pool001"
}

resource "azurerm_network_interface_backend_address_pool_association" "east_standardLB_pool_vm_association" {
  network_interface_id    = azurerm_network_interface.web-vm01-nic01.id
  ip_configuration_name   = azurerm_network_interface.web-vm01-nic01.ip_configuration[0].name
  backend_address_pool_id = azurerm_lb_backend_address_pool.east_standardLB_pool.id
}
resource "azurerm_network_interface_backend_address_pool_association" "east_standardLB_pool_vm_association02" {
  network_interface_id    = azurerm_network_interface.web-vm02-nic01.id
  ip_configuration_name   = azurerm_network_interface.web-vm02-nic01.ip_configuration[0].name
  backend_address_pool_id = azurerm_lb_backend_address_pool.east_standardLB_pool.id
}
resource "azurerm_network_interface_backend_address_pool_association" "east_standardLB_pool_vm_association03" {
  network_interface_id    = azurerm_network_interface.web-vm03-nic01.id
  ip_configuration_name   = azurerm_network_interface.web-vm03-nic01.ip_configuration[0].name
  backend_address_pool_id = azurerm_lb_backend_address_pool.east_standardLB_pool.id
}
resource "azurerm_lb_probe" "east_lb_prob01" {
  loadbalancer_id = azurerm_lb.east_standardLB.id
  name            = "http_80"
  port            = 80
}

resource "azurerm_lb_rule" "east_lb_rule01" {
  loadbalancer_id                = azurerm_lb.east_standardLB.id
  name                           = "LBRule01"
  protocol                       = "Tcp"
  frontend_port                  = 80
  backend_port                   = 80
  frontend_ip_configuration_name = azurerm_lb.east_standardLB.frontend_ip_configuration[0].name
  backend_address_pool_ids = [azurerm_lb_backend_address_pool.east_standardLB_pool.id]
  probe_id = azurerm_lb_probe.east_lb_prob01.id
}