terraform {
  required_version = ">= 1.6.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
  tags = {
    managed_by  = "terraform"
    environment = var.environment
    provisioner = "port-golden-path"
  }
}

resource "azurerm_storage_account" "this" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.this.name
  location                 = azurerm_resource_group.this.location
  account_tier             = "Standard"
  account_replication_type = var.replication_type
  account_kind             = "StorageV2"
  min_tls_version          = "TLS1_2"
  https_traffic_only_enabled = true
  allow_nested_items_to_be_public = false
  shared_access_key_enabled = false
  public_network_access_enabled = true

  blob_properties {
    versioning_enabled = true
    delete_retention_policy {
      days = 7
    }
    container_delete_retention_policy {
      days = 7
    }
  }

  tags = {
    managed_by  = "terraform"
    environment = var.environment
    provisioner = "port-golden-path"
  }
}
