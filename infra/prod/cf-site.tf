module "s3-cf-site" {
  source = "github.com/douglasnaphas/terraform-aws-s3-cf-site?ref=depend-on-cert"
  # insert the 5 required variables here
  bucket_name = var.bucket_name
  cert_domain = var.cert_domain
  ci_user_arn = var.ci_user_arn
  domain_name = var.domain_name
  zone_name   = var.zone_name
}
