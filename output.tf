output "stage" {
  value       = var.stage
  description = "Re-output of var.stage"
}

output "certificate_arn" {
  value       = aws_acm_certificate.certificate.arn
  description = "The Certificate ARN"
}

output "domains" {
  value       = local.domains
  description = "Computed list of domains in certificate"
}
