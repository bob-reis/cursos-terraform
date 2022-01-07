locals {
  ip_filepath = "config/ips.json"
  common_tags = {
    Name        = "Meu Bucket"
    Environment = "${var.environment}"
    Managedby   = "Terraform"
    Owner       = "Bob Reis"
    UpdatedAt   = "2022-01-02"
  }
}