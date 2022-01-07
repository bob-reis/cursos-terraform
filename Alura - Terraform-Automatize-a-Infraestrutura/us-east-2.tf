resource "aws_instance" "dev6" {
    provider = aws.us-east-2
    ami = "${var.amis["us-east-2"]}"
    instance_type = "t2.micro"
    key_name = "${var.key_name}"
    tags = {
        Name = "ServerBucket2"
    }
    vpc_security_group_ids = ["${aws_security_group.acesso-ssh-us-east-2.id}"]
    depends_on = [
      aws_dynamodb_table.dynamondb-homologacao
    ]
}

resource "aws_instance" "dev7" {
    provider = aws.us-east-2
    ami = "${var.amis["us-east-2"]}"
    instance_type = "t2.micro"
    key_name = "${var.key_name}"
    tags = {
        Name = "Dev7"
    }
    vpc_security_group_ids = ["${aws_security_group.acesso-ssh-us-east-2.id}"]
}