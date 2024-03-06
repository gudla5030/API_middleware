#### Resource Group Variables
variable "rg01_name" {
  type = string
  description = "Provide the Resource Group Name"
}

variable "rg02_name" {
  type = string
  description = "Provide the Resource Group Name"
  default = "Test-RG-500"
}

/*
variable "rg_location" {
  type = string
  description = "Provide the ResourceGroup Location"
}
*/

#### Virtual network Variables

variable "east_vnet01_name" {
  type = string
  description = "Provide the virtual network Name"
}

variable "east_vnet01_CIDR" {
  type = list(string)
}
variable "east_vnet01_private_subnet01" {
  
}
variable "east_vnet01_private_subnet01_CIDR" {
  
}

variable "east_vnet01_public_subnet01" {
  
}
variable "east_vnet01_public_subnet01_CIDR" {
  
}

#########Local Variables

variable "environment" {
  
}

variable "Bussiness_unit" {
  
}

########## VM variables
variable "web_vm01_nic01" {
  
}
variable "web_vm01_pip01" {
  
}
variable "web_east_vm01" {
  
}
variable "size" {
  
}
variable "admin_username" {
  
}
variable "admin_password" {
  
}