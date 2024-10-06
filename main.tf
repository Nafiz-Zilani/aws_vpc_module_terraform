module "vpc" {
  source = "./modules/vpc"
  create_vpc = true
  vpc_config = [{
    cidr_block = "10.10.0.0/16",#Give youre requir cidr block
    enable_dns_hostnames = true,
    enable_dns_support = true,
  },
  {
    cidr_block = "10.11.0.0/16",#Give youre requir cidr block
    enable_dns_hostnames = true,
    enable_dns_support = true,
  }]
}
