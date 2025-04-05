# Deploy the resources

resource "random_id" "random_storage_account_id" {
  prefix      = "azsa" # Azure Storage Account
  byte_length = 12
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  tags = {
    deployed_on = timestamp()
  }
}

resource "azurerm_storage_account" "sa" {
  name                     = random_id.random_storage_account_id.id
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = var.storage_account.account_tier
  account_replication_type = var.storage_account.account_replication_type
  min_tls_version          = var.storage_account.min_tls_version
  # TODO: add networking rules
}

output "storage_account_name" {
  description = "The name of the deployed storage account"
  value       = azurerm_storage_account.sa.name
}

output "storage_account_file_endpoint" {
  description = "The endpoint for the deployed storage account"
  value       = azurerm_storage_account.sa.primary_file_endpoint
}