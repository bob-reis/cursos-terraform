
output "bucket_name" {
  value = aws_s3_bucket.my_bucket.bucket
}

output "bucket_arn" {
  value       = aws_s3_bucket.my_bucket.arn
  description = "ARN do Bucket"
}

output "bucket_domain_name" {
  value = aws_s3_bucket.my_bucket.bucket_domain_name
}

output "ips_file_path" {
  value = "${aws_s3_bucket.my_bucket.bucket}/${aws_s3_bucket_object.my_bucket.key}"
}

output "remote_state_bucket" {
  value = aws_s3_bucket.remote_state.bucket
}

output "remote_state_bucket_arn" {
  value = aws_s3_bucket.remote_state.arn
}
