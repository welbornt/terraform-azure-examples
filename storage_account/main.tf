# Deploy the resources

resource "random_id" "random_resource_group_id" {
  prefix      = "azrg" # Azure Resource Group
  byte_length = 4
}

resource "random_id" "random_storage_account_id" {
  prefix      = "azsa" # Azure Storage Account
  byte_length = 4
}

data "http" "my_public_ipv4" {
  url = "http://ipv4.icanhazip.com"
}

resource "azurerm_resource_group" "rg" {
  name     = random_id.random_resource_group_id.dec
  location = var.location
  tags = {
    deployed_on = timestamp()
  }
}

resource "azurerm_storage_account" "sa" {
  name                     = random_id.random_storage_account_id.dec
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = var.storage_account.account_tier
  account_replication_type = var.storage_account.account_replication_type
  min_tls_version          = var.storage_account.min_tls_version
  network_rules {
    default_action = "Deny"
    ip_rules       = ["${chomp(data.http.my_public_ipv4.response_body)}"]
  }
}

output "resource_group_name" {
  description = "The name of the deployed resource group"
  value       = azurerm_resource_group.rg.name
}

output "storage_account_name" {
  description = "The name of the deployed storage account"
  value       = azurerm_storage_account.sa.name
}

output "storage_account_file_endpoint" {
  description = "The endpoint for the deployed storage account"
  value       = azurerm_storage_account.sa.primary_file_endpoint
}