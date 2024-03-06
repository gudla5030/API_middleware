terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.91.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {
  }
  client_id       = "5e42cd62-af94-4e27-becc-658e7ef24177"
  client_secret   = "bvb8Q~p2c~YH4WHI9MmkZAXRtOumSMYdLK3l5bm."
  tenant_id       = "cdc1d3d2-2bb9-498f-8206-21ac0b3ffa65"
  subscription_id = "f5507fb3-e5ac-410d-bcc4-cfa83191e4da"
}
/*
provider "aws" {
  access_key = ""
}
*/
