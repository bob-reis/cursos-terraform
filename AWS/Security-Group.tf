
// Libera todo o trafego
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

// Grupo para acesso SSH
resource "aws_security_group" "acesso-padrao-ssh" {
  name        = "acesso-padrao-ssh"
  description = "Grupo de Acesso SSH"
  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
  }
  egress {
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    from_port        = 0
    to_port          = 0
    protocol         = "0"
  }
  tags = {
    Name       = "Acesso SSH"
    Managedby  = "Terraform"
    Owner      = "Bob Reis"
    Objectives = "Destruir Apos o Curso"
  }
}

// Grupo para acesso Web (HTTP)
resource "aws_security_group" "acesso-padrao-http" {
  name        = "acesso-padrao-http"
  description = "Grupo de Acesso HTTP"
  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
  }
  egress {
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    from_port        = 0
    to_port          = 0
    protocol         = "0"
  }
  tags = {
    Name       = "Acesso HTTP"
    Managedby  = "Terraform"
    Owner      = "Bob Reis"
    Objectives = "Destruir Apos o Curso"
  }
}

// Grupo para acesso Web (HTTP)
resource "aws_security_group" "acesso-padrao-https" {
  name        = "acesso-padrao-https"
  description = "Grupo de Acesso HTTPS"
  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
  }
  egress {
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    from_port        = 0
    to_port          = 0
    protocol         = "0"
  }
  tags = {
    Name       = "Acesso HTTPS"
    Managedby  = "Terraform"
    Owner      = "Bob Reis"
    Objectives = "Destruir Apos o Curso"
  }
}