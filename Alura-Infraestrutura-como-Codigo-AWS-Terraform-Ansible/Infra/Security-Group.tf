resource "aws_security_group" "acesso_geral" {
  name        = "acesso_geral"
  description = "Grupo de Acesso Gera"
  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
  }
  egress {
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
  }
  tags = {
    Name       = "Acesso Geral"
    Managedby  = "Terraform"
    Owner      = "Bob Reis"
    Objectives = "Destruir Apos o Curso"
  }
}