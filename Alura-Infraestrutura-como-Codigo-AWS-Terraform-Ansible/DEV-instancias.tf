resource "aws_instance" "server01" {
  ami           = "ami-04505e74c0741db8d"
  instance_type = "t2.micro"

  key_name = "Chave-Dev"
  /**
  user_data = <<-EOF
    #!/bin/bash
    cd ~
    echo "<html><h1>Teste inserido com Terraform de novo</h1></html>" > ~/index.html
    nohup busybox httpd -f -p 8080 &
    EOF
   **/

  tags = merge(
    local.common_dev_tags,
    {
      Name = "Server com Python"
      Chave = "Chave-Dev"
    }
  )
}