variable "location" {}
variable "resource_group_name" {}
variable "vnet" { default = {} }
variable "subnets" { default = {} }
variable "nsg_suffix" { default = "-nsg" }

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet.name
  address_space       = var.vnet.address_space
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet" "subnets" {
  for_each             = var.subnets
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  name                 = each.value.name
  address_prefixes     = each.value.address_prefixes
  service_endpoints    = each.value.service_endpoints
}

resource "azurerm_network_security_group" "nsgs" {
  for_each            = var.subnets
  name                = "${each.value.name}${var.nsg_suffix}"
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet_network_security_group_association" "subnet_nsg_associations" {
  for_each                  = var.subnets
  subnet_id                 = azurerm_subnet.subnets[each.key].id
  network_security_group_id = azurerm_network_security_group.nsgs[each.key].id
}