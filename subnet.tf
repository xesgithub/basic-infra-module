resource "azurerm_subnet" "subnets" {
  count                 = length(var.subnets)
  name                  = var.subnets[count.index].name
  resource_group_name   = azurerm_resource_group.rg.name
  virtual_network_name  = azurerm_virtual_network.vnet.name
  address_prefixes      = [var.subnets[count.index].cidr]
}