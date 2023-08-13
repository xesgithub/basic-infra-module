# 1. Create a virtual network within the resource group
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  address_space       = var.vnet_address_space
  tags = {
    CreaterName = var.tag.creater_name
    UserName    = var.tag.owner_name
    UserEmail   = var.tag.owner_email
  }
}