variable "subscription_id" {
  description = "Azure subscription ID."
  type        = string
}

variable "resource_group_name" {
  description = "Name for the resource group to create."
  type        = string
}

variable "storage_account_name" {
  description = "Globally unique Azure Storage Account name: 3-24 lowercase letters and numbers."
  type        = string
  validation {
    condition     = can(regex("^[a-z0-9]{3,24}$", var.storage_account_name))
    error_message = "Storage account names must be 3-24 lowercase letters and numbers."
  }
}

variable "location" {
  description = "Azure region."
  type        = string
  default     = "eastus"
}

variable "environment" {
  description = "Environment tag."
  type        = string
  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "Environment must be dev, staging, or prod."
  }
}

variable "replication_type" {
  description = "Storage redundancy."
  type        = string
  default     = "LRS"
  validation {
    condition     = contains(["LRS", "ZRS", "GRS"], var.replication_type)
    error_message = "Replication type must be LRS, ZRS, or GRS."
  }
}
