variable "amis" {
  type = map
  default = {
      "us-east-1" = "ami-0e472ba40eb589f49"
      "us-east-2" = "ami-002068ed284fb165b"
  }
}

variable "cdirs_acesso_remoto" {
  type = list
  default = ["179.98.56.59/32"]
}
variable "key_name" {
  type = string
  default = "terraform-aws"
}