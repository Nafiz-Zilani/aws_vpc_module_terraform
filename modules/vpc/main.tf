locals {
  vpc_count = length(var.vpc_config)
}

resource "aws_vpc" "this" {
  count = var.create_vpc ? local.vpc_count : 0
  cidr_block = var.vpc_config[count.index].cidr_block
}