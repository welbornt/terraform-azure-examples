variable "subscription_id" {
  description = "The Azure subscription for the deployment"
  type        = string
}

variable "location" {
  default = "westus2"
}

variable "resource_group_name" {
  default = "rg01"
}

variable "vnet" {
  default = {
    name          = "vnet01"
    address_space = ["10.0.0.0/16"]
  }
}

variable "subnets" {
  default = {
    api_subnet = {
      name              = "ApiSubnet"
      address_prefixes  = ["10.0.0.0/19"]
      service_endpoints = []
    }
    secdata_subnet = {
      name              = "SecDataSubnet"
      address_prefixes  = ["10.0.64.0/19"]
      service_endpoints = []
    }
    domain_subnet = {
      name              = "DomainSubnet"
      address_prefixes  = ["10.0.96.0/19"]
      service_endpoints = []
    }
    data_subnet = {
      name              = "DataSubnet"
      address_prefixes  = ["10.0.128.0/19"]
      service_endpoints = []
    }
    cache_subnet = {
      name              = "CacheSubnet"
      address_prefixes  = ["10.0.192.0/19"]
      service_endpoints = []
    }
    dev_subnet = {
      name              = "DevSubnet"
      address_prefixes  = ["10.0.224.0/19"]
      service_endpoints = []
    }
  }
}