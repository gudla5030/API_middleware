rg01_name     = "RG-100"
rg02_name     = "RG-200"
#rg_location = "westus"

environment = "dev"
Bussiness_unit = "BAU"


east_vnet01_name = "east-vnet01"
east_vnet01_CIDR = ["172.16.0.0/16","192.168.0.0/16"]

east_vnet01_private_subnet01    = "east-vnet01-private-sub01"
east_vnet01_private_subnet01_CIDR = ["172.16.1.0/24"]

east_vnet01_public_subnet01 = "east-vnet01-public-sub01"
east_vnet01_public_subnet01_CIDR = ["172.16.2.0/24"]

web_vm01_nic01  = "web-vm01-nic01"
web_vm01_pip01  = "web-vm01-pip01"
web_east_vm01   = "web-east-vm01"
size            = "Standard_B1ls"
admin_username      = "azadmin"
admin_password = "Password@123"
