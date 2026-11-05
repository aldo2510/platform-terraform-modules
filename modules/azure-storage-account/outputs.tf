output "resource_group_name" {
  value       = azurerm_resource_group.this.name
  description = "Created resource group."
}

output "storage_account_name" {
  value       = azurerm_storage_account.this.name
  description = "Created storage account."
}

output "storage_account_id" {
  value       = azurerm_storage_account.this.id
  description = "Resource ID of the created storage account."
}

output "primary_blob_endpoint" {
  value       = azurerm_storage_account.this.primary_blob_endpoint
  description = "Primary blob service endpoint."
}
