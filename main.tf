resource "vault_policy" "policy" {
  name   = "vault_demo_policy"
  policy = data.vault_policy_document.vault_demo.hcl
}
