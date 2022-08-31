#---------------------
# Create policies
#---------------------
# Create fpe-client policy in the root namespace
resource "vault_policy" "fpe_client_policy" {
  name   = "fpe-client"
  policy = file("policies/fpe-client-policy.hcl")
}

# Create admin policy in the root namespace
resource "vault_policy" "admin_policy" {
  name   = "admins"
  policy = file("policies/admin-policy.hcl")
}

# Create admin policy in the finance namespace
resource "vault_policy" "admin_policy_finance" {
  namespace = vault_namespace.finance.path
  name   = "admins"
  policy = file("policies/admin-policy.hcl")
}

# Create admin policy in the engineering namespace
resource "vault_policy" "admin_policy_engineering" {
  namespace = vault_namespace.engineering.path
  name   = "admins"
  policy = file("policies/admin-policy.hcl")
}
