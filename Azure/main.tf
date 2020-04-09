# Terraform voor Azure. 
# Gemaakt door Codey Jansen en Thomas Brinkman

#Provider aangeven + credentials refereren
provider "azurerm" {
  version = "=2.0.0"

 subscription_id = var.subscription_id
 client_id       = var.client_id
 client_secret   = var.client_secret
 tenant_id       = var.tenant_id

features {}
}

terraform {
    backend "azurerm" {}
}


##############################################################

