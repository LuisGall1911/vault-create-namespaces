terraform {
  required_providers {
    vault = "~> 3.7.0"
  }
}

#------------------------------------------------------------------------------
# To leverage more than one namespace, define a vault provider per namespace
#------------------------------------------------------------------------------



#------------------------------------------------------------------------------
# Create namespaces: finance, and engineering
#------------------------------------------------------------------------------
resource "vault_namespace" "finance" {
  path = "finance"
}

resource "vault_namespace" "engineering" {
  path = "engineering"
}