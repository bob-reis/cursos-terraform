resource "aws_dynamodb_table" "dynamondb-homologacao" {
    provider = aws.us-east-2
    name = "GameScores"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "UserId"
    range_key = "GameTittle"

    attribute {
      name = "UserId"
      type = "S"
    }

    attribute {
      name = "GameTittle"
      type = "S"
    }
}