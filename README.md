[![Maintained by Scaffoldly](https://img.shields.io/badge/maintained%20by-scaffoldly-blueviolet)](https://github.com/scaffoldly)
![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/scaffoldly/CHANGEME)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D1.0.4-blue.svg)

## Description

CHANGEME

## Usage

```hcl
module "CHANGME" {

}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0, < 1.1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.64.2 |
| <a name="provider_aws.dns"></a> [aws.dns](#provider\_aws.dns) | 3.64.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_acm_certificate.certificate](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate) | resource |
| [aws_acm_certificate_validation.validation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate_validation) | resource |
| [aws_route53_record.verification_record](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_zone.zone](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route53_zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domains"></a> [domains](#input\_domains) | The list of domains for which to create a certificate | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_certificate_arn"></a> [certificate\_arn](#output\_certificate\_arn) | The Certificate ARN |
| <a name="output_domains"></a> [domains](#output\_domains) | Re-output of var.domains |
<!-- END_TF_DOCS -->
