module "s3-cf-site" {
  source = "github.com/douglasnaphas/terraform-aws-s3-cf-site?ref=depend-on-cert"
  # source     = "./terraform-aws-s3-cf-site/"
  depends_on = [module.acm]
  # insert the 5 required variables here
  cert_arn    = module.acm.this_acm_certificate_arn
  bucket_name = var.bucket_name
  ci_user_arn = var.ci_user_arn
  domain_name = var.domain_name
  zone_name   = var.zone_name
}
