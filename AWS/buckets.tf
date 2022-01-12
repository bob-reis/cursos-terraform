// Cira o bucket com permissao publica
resource "aws_s3_bucket" "meu-bucket-do-curso-aws-alura" {
  bucket = "meu-bucket-do-curso-aws-alura"
  // permite a leitura publica
  acl           = "public-read"
  force_destroy = true

  versioning {
    enabled = true
  }

  lifecycle_rule {
    id      = "/"
    enabled = true

    prefix = "/"

    tags = {
      rule      = "root"
      autoclean = "true"
    }

    transition {
      days          = 30
      storage_class = "STANDARD_IA" # or "ONEZONE_IA"
    }

    transition {
      days          = 60
      storage_class = "GLACIER"
    }

    noncurrent_version_expiration {
      days = 90
    }

    expiration {
      days = 180
    }
  }

  // Ativa o Servidor Web Estático
  website {
    index_document = "index.html"
    error_document = "index.html"

    routing_rules = <<EOF
[{
    "Condition": {
        "KeyPrefixEquals": "docs/"
    },
    "Redirect": {
        "ReplaceKeyPrefixWith": "documents/"
    }
}]
EOF
  }

  policy = <<EOF
{
  "Version": "2008-10-17",
  "Statement": [
    {
      "Sid": "PublicReadForGetBucketObjects",
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::meu-bucket-do-curso-aws-alura/*"
    }
  ]
}
EOF

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["PUT", "POST"]
    allowed_origins = ["*"]
    expose_headers  = ["ETag"]
    max_age_seconds = 3000
  }

  tags = merge(
    local.common_dev_tags,
    {
      Name  = "Primeiro Bucket do Curso de Bucket"
      Chave = "Chave-Dev"
    }
  )
}

resource "aws_s3_bucket_object" "index-html" {
  bucket = aws_s3_bucket.meu-bucket-do-curso-aws-alura.id
  key    = "index.html"
  acl    = "public-read"
  source = "./files/index.html"
}

