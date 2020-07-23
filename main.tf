variable "ARM_SUBSCRIPTION_ID" {}
variable "ARM_CLIENT_ID" {}
variable "ARM_CLIENT_SECRET" {}
variable "ARM_TENANT_ID" {}


provider "azurerm" {
  # The "feature" block is required for AzureRM provider 2.x.
  # If you are using version 1.x, the "features" block is not allowed.
  version = "~>2.0"
  features {}
  
  ARM_SUBSCRIPTION_ID = var.ARM_SUBSCRIPTION_I
  ARM_CLIENT_ID = var.ARM_CLIENT_ID
  ARM_CLIENT_SECRET = var.ARM_CLIENT_SECRET
  ARM_TENANT_ID = var.ARM_TENANT_ID
  
}
resource "azurerm_resource_group" "rg" {
        name = "QuickstartTerraformTest-rg"
        location = "eastus"
}
