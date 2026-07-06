output "kusto_cluster_customer_managed_keys" {
  description = "All kusto_cluster_customer_managed_key resources"
  value       = azurerm_kusto_cluster_customer_managed_key.kusto_cluster_customer_managed_keys
}
output "kusto_cluster_customer_managed_keys_cluster_id" {
  description = "List of cluster_id values across all kusto_cluster_customer_managed_keys"
  value       = [for k, v in azurerm_kusto_cluster_customer_managed_key.kusto_cluster_customer_managed_keys : v.cluster_id]
}
output "kusto_cluster_customer_managed_keys_key_name" {
  description = "List of key_name values across all kusto_cluster_customer_managed_keys"
  value       = [for k, v in azurerm_kusto_cluster_customer_managed_key.kusto_cluster_customer_managed_keys : v.key_name]
}
output "kusto_cluster_customer_managed_keys_key_vault_id" {
  description = "List of key_vault_id values across all kusto_cluster_customer_managed_keys"
  value       = [for k, v in azurerm_kusto_cluster_customer_managed_key.kusto_cluster_customer_managed_keys : v.key_vault_id]
}
output "kusto_cluster_customer_managed_keys_key_version" {
  description = "List of key_version values across all kusto_cluster_customer_managed_keys"
  value       = [for k, v in azurerm_kusto_cluster_customer_managed_key.kusto_cluster_customer_managed_keys : v.key_version]
}
output "kusto_cluster_customer_managed_keys_managed_hsm_key_id" {
  description = "List of managed_hsm_key_id values across all kusto_cluster_customer_managed_keys"
  value       = [for k, v in azurerm_kusto_cluster_customer_managed_key.kusto_cluster_customer_managed_keys : v.managed_hsm_key_id]
}
output "kusto_cluster_customer_managed_keys_user_identity" {
  description = "List of user_identity values across all kusto_cluster_customer_managed_keys"
  value       = [for k, v in azurerm_kusto_cluster_customer_managed_key.kusto_cluster_customer_managed_keys : v.user_identity]
}

