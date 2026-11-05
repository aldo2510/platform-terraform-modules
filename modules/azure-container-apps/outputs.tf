output "resource_group_name" {
  value = azurerm_resource_group.main.name
}

output "acr_name" {
  value = azurerm_container_registry.main.name
}

output "acr_login_server" {
  value = azurerm_container_registry.main.login_server
}

output "container_app_name" {
  value = azurerm_container_app.main.name
}

output "container_app_url" {
  value = "https://${azurerm_container_app.main.latest_revision_fqdn}"
}
