data "aws_route53_zone" "zone" {
  name = var.root_domain

  provider = aws.dns
}

resource "aws_acm_certificate" "certificate" {
  domain_name               = var.domains[0]
  subject_alternative_names = length(var.domains) > 1 ? slice(var.domains, 1, length(var.domains)) : null
  validation_method         = "DNS"

  options {
    certificate_transparency_logging_preference = "ENABLED"
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_route53_record" "verification_record" {
  for_each = {
    for dvo in aws_acm_certificate.certificate.domain_validation_options : dvo.domain_name => {
      domain = dvo.domain_name
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }

  name    = each.value.name
  records = [each.value.record]
  ttl     = 60
  type    = each.value.type
  zone_id = data.aws_route53_zone.zone.zone_id

  allow_overwrite = true

  provider = aws.dns
}

resource "aws_acm_certificate_validation" "validation" {
  certificate_arn         = aws_acm_certificate.certificate.arn
  validation_record_fqdns = values(aws_route53_record.verification_record)[*].fqdn
}
