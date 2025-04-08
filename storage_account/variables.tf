variable "subscription_id" {
  description = "The Azure subscription for the deployment"
  type        = string
}

variable "location" {
  description = "The Azure region for the deployment"
  type        = string
  default     = "westus2"
}

variable "storage_account" {
  description = "Defines the storage account parameters"
  type = object({
    account_tier             = string
    account_replication_type = string
    min_tls_version          = string
  })
  default = {
    account_tier             = "Standard"
    account_replication_type = "LRS"
    min_tls_version          = "TLS1_2"
  }
}