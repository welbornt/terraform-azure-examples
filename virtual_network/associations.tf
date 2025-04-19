
resource "azurerm_subnet_network_security_group_association" "api_subnet_nsg_association" {
  subnet_id                 = azurerm_subnet.api_subnet.id
  network_security_group_id = azurerm_network_security_group.api_nsg.id
}

resource "azurerm_subnet_network_security_group_association" "app_subnet_nsg_association" {
  subnet_id                 = azurerm_subnet.app_subnet.id
  network_security_group_id = azurerm_network_security_group.app_nsg.id
}

resource "azurerm_subnet_network_security_group_association" "secdata_subnet_nsg_association" {
  subnet_id                 = azurerm_subnet.secdata_subnet.id
  network_security_group_id = azurerm_network_security_group.secdata_nsg.id
}

resource "azurerm_subnet_network_security_group_association" "domain_subnet_nsg_association" {
  subnet_id                 = azurerm_subnet.domain_subnet.id
  network_security_group_id = azurerm_network_security_group.domain_nsg.id
}

resource "azurerm_subnet_network_security_group_association" "data_subnet_nsg_association" {
  subnet_id                 = azurerm_subnet.data_subnet.id
  network_security_group_id = azurerm_network_security_group.data_nsg.id
}

resource "azurerm_subnet_network_security_group_association" "management_subnet_nsg_association" {
  subnet_id                 = azurerm_subnet.management_subnet.id
  network_security_group_id = azurerm_network_security_group.management_nsg.id
}

resource "azurerm_subnet_network_security_group_association" "cache_subnet_nsg_association" {
  subnet_id                 = azurerm_subnet.cache_subnet.id
  network_security_group_id = azurerm_network_security_group.cache_nsg.id
}

resource "azurerm_subnet_network_security_group_association" "dev_subnet_nsg_association" {
  subnet_id                 = azurerm_subnet.dev_subnet.id
  network_security_group_id = azurerm_network_security_group.dev_nsg.id
}
