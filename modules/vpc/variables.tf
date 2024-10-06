variable "create_vpc" {
  type = bool
}

variable "vpc_config" {
  type = list(object({
    cidr_block = string,
    enable_dns_hostnames = bool,
    enable_dns_support = bool,
  }))
}