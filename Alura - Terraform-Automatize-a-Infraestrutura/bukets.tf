resource "aws_s3_bucket" "dev4" {
    bucket = "bob-dev4"
    acl = "private"

    tags = {
        Name    =   "Bucket Bob"
    }
}

resource "aws_s3_bucket" "homolocacao" {
    bucket = "bob-homologacao"
    acl = "private"

    tags = {
        Name    =   "Bucket Homologacao"
    }
}