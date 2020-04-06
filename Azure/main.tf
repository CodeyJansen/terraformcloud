variable subscription_id {}
variable tenant_id {}
variable client_id {}
variable client_secret {}

provider "azurerm" {
  version = "=2.0.0"

  # DO NOT USE THIS IN PROD
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "TestRG"
  location = "West Europe"

  tags = {
  environment = "Dev" }
}