# 2. Configure the AzureRM Provider
provider "azurerm" {
  features {}
  # subscription_id = "91148cc6-29ff-47cb-b259-93e87b42684b"

}

# 3. Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location
  tags = {
    CreaterName = var.tag.creater_name
    UserName    = var.tag.owner_name
    UserEmail   = var.tag.owner_email
  }
}