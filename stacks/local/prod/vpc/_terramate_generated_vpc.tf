// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

module "vpc" {
  azs = [
    "ap-southeast-1a",
    "ap-southeast-1b",
  ]
  cidr                 = "10.0.0.0/16"
  create_vpc           = true
  enable_dns_hostnames = true
  enable_ipv6          = false
  enable_nat_gateway   = false
  name                 = "local"
  private_subnets = [
    "10.0.1.0/24",
    "10.0.2.0/24",
  ]
  public_subnets = [
    "10.0.11.0/24",
    "10.0.12.0/24",
  ]
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.2.0"
}
