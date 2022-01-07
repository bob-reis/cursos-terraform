resource "aws_instance" "dev" {
    count = 3
    ami = "${var.amis["us-east-1"]}"
    instance_type = "t2.micro"
    key_name = "${var.key_name}"
    tags = {
        Name = "Server-${count.index}"
    }
    vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
}

resource "aws_instance" "dev4" {
    ami = "${var.amis["us-east-1"]}"
    instance_type = "t2.micro"
    key_name = "${var.key_name}"
    tags = {
        Name = "ServerBucket"
    }
    vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
    depends_on = [aws_s3_bucket.dev4]
}

resource "aws_instance" "dev5" {
    ami = "${var.amis["us-east-1"]}"
    instance_type = "t2.micro"
    key_name = "${var.key_name}"
    tags = {
        Name = "ServerBucket2"
    }
    vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
}