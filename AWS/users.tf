/***
resource "aws_iam_user" "terraform-aws" {
  name = "terraform-aws"
  path = "/"
  force_destroy = true

  tags = merge(
    local.common_dev_tags,
    {
      Name  = "Usuario do Terraform"
      Chave = "Chave-Dev"
    }
  )
}
***/
