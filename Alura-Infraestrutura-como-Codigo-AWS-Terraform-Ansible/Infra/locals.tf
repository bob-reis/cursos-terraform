locals {
  common_dev_tags = {
    Managedby = "Terraform"
    Ambiente  = "DEV"
    Objetivo  = "Deletar apos curso"
  }
  common_prod_tags = {
    Managedby = "Terraform"
    Ambiente  = "PROD"
    Objetivo  = "Deletar apos curso"
  }
}