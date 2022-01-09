resource "aws_key_pair" "ChaveDev" {
  key_name   = "Chave-Dev"
  public_key = file("Chave-Dev.pub")
}

resource "aws_key_pair" "ChaveProd" {
  key_name   = "Chave-Prod"
  public_key = file("Chave-Prod.pub")
}