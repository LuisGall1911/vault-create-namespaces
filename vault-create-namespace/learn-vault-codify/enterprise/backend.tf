terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "hashicorp-luis"
    workspaces {
      name = "vault-create-namespaces"
    }
  }
}