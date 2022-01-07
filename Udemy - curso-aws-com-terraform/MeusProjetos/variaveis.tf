variable "aws_region" {
  type    = string
  default = "us-east-1"
}
variable "environment" {
  type    = string
  default = "dev"
}
variable "aws_instance" {
  type    = string
  default = "t2.micro"
}

variable "instance_tags" {
  type = map(string)
  default = {
    Name    = "Ubuntu"
    Project = "Curso AWS com Terraform"
  }
}