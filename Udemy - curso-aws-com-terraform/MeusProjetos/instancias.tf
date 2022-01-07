resource "aws_instance" "web" {
  ami           = "ami-0ed9277fb7eb570c9"
  instance_type = var.aws_instance

  tags = var.instance_tags
}

resource "aws_instance" "devfront" {
  count         = 3
  ami           = "ami-0ed9277fb7eb570c9"
  instance_type = var.aws_instance
  tags = merge(
    local.common_tags,
    {
      Name = "Server-${count.index}"
    }
  )
}
