output "rg_out" {
  value = {
    rgname = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location
    id = azurerm_resource_group.rg.id
  }
}

output "suffix_out" {
  value = random_string.suffix.result
}

#output "sa_allout" {
#  value     = azurerm_storage_account.sa
#  sensitive = true
#}

output "sa_out" {
  value = {
    name = azurerm_storage_account.sa.name
    location = azurerm_storage_account.sa.location
    id = azurerm_storage_account.sa.id
    access_tier = azurerm_storage_account.sa.access_tier
    account_kind = azurerm_storage_account.sa.account_kind
    account_tier = azurerm_storage_account.sa.account_tier
    account_replication_type = azurerm_storage_account.sa.account_replication_type
    https_traffic_only_enabled = azurerm_storage_account.sa.https_traffic_only_enabled
    min_tls_version = azurerm_storage_account.sa.min_tls_version
  }
}

output "sa_access_key_out" {
  sensitive = true
  value = {
    #id = azurerm_storage_account.sa.id
    name = azurerm_storage_account.sa.name
    #location = azurerm_storage_account.sa.location
    primary_access_key = azurerm_storage_account.sa.primary_access_key
    primary_connection_string = azurerm_storage_account.sa.primary_connection_string
    primary_blob_endpoint = azurerm_storage_account.sa.primary_blob_endpoint
    primary_blob_connection_string = azurerm_storage_account.sa.primary_blob_connection_string
  }
}

output "sa_container_out" {
  value = {
    name = azurerm_storage_container.sa_container.name
    id = azurerm_storage_container.sa_container.id
  }
}

output "backend_sa_out" {
  value = {
    resourcegroup  = azurerm_resource_group.rg.name
    storageAccount = azurerm_storage_account.sa.name
    saContainer    = azurerm_storage_container.sa_container.name
  }
}
