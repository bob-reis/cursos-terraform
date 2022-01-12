resource "aws_instance" "servidor01" {
  ami                     = var.ubuntu-ami-virgina
  instance_type           = var.aws_instance
  key_name                = "Chave-Dev"
  disable_api_termination = false
  vpc_security_group_ids = [
    aws_security_group.acesso_geral.id,
    aws_security_group.acesso-padrao-ssh.id,
    aws_security_group.acesso-padrao-http.id,
    aws_security_group.acesso-padrao-https.id
  ]

  tags = merge(
    local.common_dev_tags,
    {
      Name  = "Servidor 01"
      Chave = "Chave-Dev"
    }
  )
}
output "IP-Address" {
  value = aws_instance.servidor01.public_ip
}

/***
resource "aws_instance" "devfront" {
  count         = 3
  ami           = var.default-ami
  instance_type = var.aws_instance
  key_name      = "Chave-Dev"
  tags = merge(
    local.common_dev_tags,
    {
      Name  = "Server-Desenvolvimento-${count.index}"
      Chave = "Chave-Dev"
    }
  )
}
***/