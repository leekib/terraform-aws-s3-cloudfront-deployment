output "deployment_commands" {
  value = <<EOT
  You might want to upload website files to the S3 bucket and then deploy the website using the CloudFront distribution.
  Move to the website directory and run the following commands:

  aws s3 sync . s3://${aws_s3_bucket.this.bucket} --exclude ".git/*"
  aws cloudfront create-invalidation --distribution-id ${aws_cloudfront_distribution.this.id} --paths "/*"
EOT
}