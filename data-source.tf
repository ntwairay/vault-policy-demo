data "vault_policy_document" "vault_demo" {
  rule {
    path         = "sys/policies/acl"
    capabilities = ["create","update", "delete", "read", "list"]
  }
  rule {
    path         = "sys/policies/acl/*"
    capabilities = ["create","update", "delete", "read", "list"]
  }
  rule {
    path         = "sys/policies/acl/root_vault_admin"
    capabilities = ["read"]
  }
}
