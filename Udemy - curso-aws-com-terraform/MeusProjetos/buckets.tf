resource "aws_s3_bucket" "my_bucket" {
  bucket = "${random_pet.bucket.id}-${var.environment}"
  acl    = "private"

  tags = local.common_tags
}

resource "aws_s3_bucket" "bucket_importado" {
  bucket = "meubucketmuitolokoparaimportar"
  acl    = "private"
  tags = {
    Nome      = "bucket_louco"
    Importado = "02/01/2022"
    Managedby = "Terraforme"
  }
}

resource "aws_s3_bucket_object" "my_bucket" {
  bucket = aws_s3_bucket.my_bucket.bucket
  key    = "config/${local.ip_filepath}"
  source = local.ip_filepath
  etag   = filemd5("${local.ip_filepath}")
  tags   = local.common_tags
}

resource "aws_s3_bucket" "remote_state" {
  bucket = "tfstate-${data.aws_caller_identity.current.account_id}"
  versioning {
    enabled = true
  }
  tags = {
    description = "Armazenamento do State do Terraform"
    Managedby   = "Terraform"
    Owner       = "Bob"
    Teste       = "state"
  }
}