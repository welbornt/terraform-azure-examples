
resource "azurerm_network_security_group" "api_nsg" {
  name                = "api-nsg"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_network_security_group" "app_nsg" {
  name                = "app-nsg"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_network_security_group" "secdata_nsg" {
  name                = "secdata-nsg"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_network_security_group" "domain_nsg" {
  name                = "domain-nsg"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_network_security_group" "data_nsg" {
  name                = "data-nsg"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_network_security_group" "management_nsg" {
  name                = "management-nsg"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_network_security_group" "cache_nsg" {
  name                = "cache-nsg"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_network_security_group" "dev_nsg" {
  name                = "dev-nsg"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
}