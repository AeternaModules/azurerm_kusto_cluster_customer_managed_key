variable "kusto_cluster_customer_managed_keys" {
  description = <<EOT
Map of kusto_cluster_customer_managed_keys, attributes below
Required:
    - cluster_id
Optional:
    - key_name
    - key_vault_id
    - key_version
    - managed_hsm_key_id
    - user_identity
EOT

  type = map(object({
    cluster_id         = string
    key_name           = optional(string)
    key_vault_id       = optional(string)
    key_version        = optional(string)
    managed_hsm_key_id = optional(string)
    user_identity      = optional(string)
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_kusto_cluster_customer_managed_key's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: cluster_id
  #   source:    [from commonids.ValidateKustoClusterID] !ok
  # path: cluster_id
  #   source:    [from commonids.ValidateKustoClusterID] err != nil
  # path: key_vault_id
  #   source:    [from commonids.ValidateKeyVaultID] !ok
  # path: key_vault_id
  #   source:    [from commonids.ValidateKeyVaultID] err != nil
  # path: managed_hsm_key_id
  #   source:    validation.Any(...) - no translation rule yet, add one
  # path: key_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: key_version
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: user_identity
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: user_identity
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
}

