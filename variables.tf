variable "stage" {
  type        = string
  description = "The stage (e.g. live, nonlive)"
}

variable "root_domain" {
  type        = string
  description = "The root domain"
}

variable "subdomains" {
  type        = list(string)
  description = "The list of subdomains for which to create a certificate"
}

variable "subdomain_suffix" {
  type        = string
  description = "The (optional) suffix to append to each subdomain"
  default     = ""
}
