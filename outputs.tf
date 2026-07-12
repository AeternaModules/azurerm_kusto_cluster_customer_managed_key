output "kusto_cluster_customer_managed_keys_cluster_id" {
  description = "Map of cluster_id values across all kusto_cluster_customer_managed_keys, keyed the same as var.kusto_cluster_customer_managed_keys"
  value       = { for k, v in azurerm_kusto_cluster_customer_managed_key.kusto_cluster_customer_managed_keys : k => v.cluster_id }
}
output "kusto_cluster_customer_managed_keys_key_name" {
  description = "Map of key_name values across all kusto_cluster_customer_managed_keys, keyed the same as var.kusto_cluster_customer_managed_keys"
  value       = { for k, v in azurerm_kusto_cluster_customer_managed_key.kusto_cluster_customer_managed_keys : k => v.key_name }
}
output "kusto_cluster_customer_managed_keys_key_vault_id" {
  description = "Map of key_vault_id values across all kusto_cluster_customer_managed_keys, keyed the same as var.kusto_cluster_customer_managed_keys"
  value       = { for k, v in azurerm_kusto_cluster_customer_managed_key.kusto_cluster_customer_managed_keys : k => v.key_vault_id }
}
output "kusto_cluster_customer_managed_keys_key_version" {
  description = "Map of key_version values across all kusto_cluster_customer_managed_keys, keyed the same as var.kusto_cluster_customer_managed_keys"
  value       = { for k, v in azurerm_kusto_cluster_customer_managed_key.kusto_cluster_customer_managed_keys : k => v.key_version }
}
output "kusto_cluster_customer_managed_keys_managed_hsm_key_id" {
  description = "Map of managed_hsm_key_id values across all kusto_cluster_customer_managed_keys, keyed the same as var.kusto_cluster_customer_managed_keys"
  value       = { for k, v in azurerm_kusto_cluster_customer_managed_key.kusto_cluster_customer_managed_keys : k => v.managed_hsm_key_id }
}
output "kusto_cluster_customer_managed_keys_user_identity" {
  description = "Map of user_identity values across all kusto_cluster_customer_managed_keys, keyed the same as var.kusto_cluster_customer_managed_keys"
  value       = { for k, v in azurerm_kusto_cluster_customer_managed_key.kusto_cluster_customer_managed_keys : k => v.user_identity }
}

