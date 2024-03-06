
resource "azurerm_linux_virtual_machine" "web_vm01" {
  name                = var.web_east_vm01
  resource_group_name = azurerm_resource_group.rg01.name
  location            = azurerm_resource_group.rg01.location
  size                = var.size
  network_interface_ids = [
    azurerm_network_interface.web-vm01-nic01.id,
  ]
  admin_username      = var.admin_username
  admin_password = var.admin_password
  disable_password_authentication = false
  custom_data = filebase64("nginx.sh")
  zone = "3"
  # custom_data = <<CUSTOM_DATA
  # #!/bin/bash
  # echo "Execute your super awesome commands here!"
  # CUSTOM_DATA
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}


resource "azurerm_linux_virtual_machine" "web_vm02" {
  name                = "web-vm02"
  resource_group_name = azurerm_resource_group.rg01.name
  location            = azurerm_resource_group.rg01.location
  size                = var.size
  network_interface_ids = [
    azurerm_network_interface.web-vm02-nic01.id,
  ]
  admin_username      = var.admin_username
  admin_password = var.admin_password
  disable_password_authentication = false
  custom_data = filebase64("nginx.sh")
  zone = "3"
  # custom_data = <<CUSTOM_DATA
  # #!/bin/bash
  # echo "Execute your super awesome commands here!"
  # CUSTOM_DATA
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}

resource "azurerm_linux_virtual_machine" "web_vm03" {
  name                = "Web-VM03"
  resource_group_name = azurerm_resource_group.rg01.name
  location            = azurerm_resource_group.rg01.location
  size                = var.size
  network_interface_ids = [
    azurerm_network_interface.web-vm03-nic01.id,
  ]
  admin_username      = var.admin_username
  admin_password = var.admin_password
  disable_password_authentication = false
  custom_data = filebase64("nginx.sh")
  zone = "2"
  # custom_data = <<CUSTOM_DATA
  # #!/bin/bash
  # echo "Execute your super awesome commands here!"
  # CUSTOM_DATA
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}