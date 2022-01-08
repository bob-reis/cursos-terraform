resource "aws_instance" "server01" {
  ami           = "ami-04505e74c0741db8d"
  instance_type = "t2.micro"

  key_name = "Bob"

  tags = merge(
    local.common_tags,
    {
      Name = "Ubuntu de Teste"
    }
  )
}