resource "aws_instance" "server01" {
  ami           = "ami-04505e74c0741db8d"
  instance_type = var.instancia
  key_name      = "Chave-Dev"

  tags = merge(
    local.common_dev_tags,
    {
      Name  = "Server com Python"
      Chave = "Chave-Dev"
    }
  )
}