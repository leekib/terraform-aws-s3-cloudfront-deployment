
variable "domain" {
  description = "The custom domain to use with the CloudFront distribution"
  type        = string
}

variable "hosted_zone_name" {
  description = "The name of the hosted zone"
  type        = string
}

variable "acm_certificate_arn" {
  description = "ACM certificate ARN for the custom domain"
  type        = string
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket to use for the site"
  type        = string
  nullable    = true
  default = null
}

variable "default_root_object" {
  description = "The default root object for the CloudFront distribution"
  type        = string
  nullable = true
  default = "index.html"
}
