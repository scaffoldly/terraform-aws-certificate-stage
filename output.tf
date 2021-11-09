output "certificate_arn" {
  value       = aws_acm_certificate.certificate.arn
  description = "The Certificate ARN"
}

output "domains" {
  value       = var.domains
  description = "Re-output of var.domains"
}
