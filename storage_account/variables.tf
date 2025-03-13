variable "subscription_id" {
  description = "The Azure subscription for the deployment"
  type        = string
}

variable "location" {
  description = "The Azure region for the deployment"
  type        = string
  default     = "westus2"
}

variable "resource_group_name" {
  description = "The name of the resource group to deploy"
  type        = string
  default     = "storageAccountRG"
}

variable "storage_account" {
  description = "Defines the storage account parameters"
  type = object({
    name                     = string
    account_tier             = string
    account_replication_type = string
    min_tls_version          = string
  })
  default = {
    # TODO: random name assignment for a default value
    name                     = "storageaccountname"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    min_tls_version          = "TLS1_2"
  }
}