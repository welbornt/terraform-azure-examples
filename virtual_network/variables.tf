variable "subscription_id" {
  description = "The Azure subscription for the deployment"
  type        = string
}

variable "location" {
  description = "The Azure region for the deployment"
  type        = string
  default     = "westus2"
}