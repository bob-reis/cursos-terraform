locals {
  has_domain = var.domain != " "
  domain     = local.has_domain ? var.domain : random_pet.website.id

  common_tags = {
    Project   = "Site do Bob"
    Service   = "Aprendendo Terraform"
    CreatedAt = "2022-01-05"
    Module    = "3"
  }
}