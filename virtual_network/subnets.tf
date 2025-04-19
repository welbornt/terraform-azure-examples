
resource "azurerm_subnet" "api_subnet" {
  name                 = "ApiSubnet"
  address_prefixes     = ["10.0.0.0/19"]
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name  = azurerm_resource_group.rg.name
  service_endpoints    = []
}

resource "azurerm_subnet" "app_subnet" {
  name                 = "AppSubnet"
  address_prefixes     = ["10.0.32.0/19"]
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name  = azurerm_resource_group.rg.name
  service_endpoints    = []
}

resource "azurerm_subnet" "secdata_subnet" {
  name                 = "SecDataSubnet"
  address_prefixes     = ["10.0.64.0/19"]
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name  = azurerm_resource_group.rg.name
  service_endpoints    = []
}

resource "azurerm_subnet" "domain_subnet" {
  name                 = "DomainSubnet"
  address_prefixes     = ["10.0.96.0/19"]
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name  = azurerm_resource_group.rg.name
  service_endpoints    = []
}

resource "azurerm_subnet" "data_subnet" {
  name                 = "DataSubnet"
  address_prefixes     = ["10.0.128.0/19"]
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name  = azurerm_resource_group.rg.name
  service_endpoints    = []
}

resource "azurerm_subnet" "management_subnet" {
  name                 = "ManagementSubnet"
  address_prefixes     = ["10.0.160.0/19"]
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name  = azurerm_resource_group.rg.name
  service_endpoints    = []
}

resource "azurerm_subnet" "cache_subnet" {
  name                 = "CacheSubnet"
  address_prefixes     = ["10.0.192.0/19"]
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name  = azurerm_resource_group.rg.name
  service_endpoints    = []
}

resource "azurerm_subnet" "dev_subnet" {
  name                 = "DevSubnet"
  address_prefixes     = ["10.0.224.0/19"]
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name  = azurerm_resource_group.rg.name
  service_endpoints    = []
}
