// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

module "vpc" {
  azs = [
    "us-west-2a",
    "us-west-2b",
  ]
  cidr                 = "10.0.0.0/16"
  create_vpc           = true
  enable_dns_hostnames = true
  enable_ipv6          = false
  enable_nat_gateway   = true
  name                 = "dev"
  private_subnet_tags = {
    tier                              = "private"
    "kubernetes.io/cluster/ex-eks"    = "shared"
    "kubernetes.io/role/internal-elb" = 1
    "karpenter.sh/discovery/ex-eks"   = "ex-eks"
  }
  private_subnets = [
    "10.0.1.0/24",
    "10.0.2.0/24",
  ]
  public_subnet_tags = {
    tier                           = "public"
    "kubernetes.io/cluster/ex-eks" = "shared"
    "kubernetes.io/role/elb"       = 1
  }
  public_subnets = [
    "10.0.11.0/24",
    "10.0.12.0/24",
  ]
  source = "terraform-aws-modules/vpc/aws"
  tags = {
    env   = "dev"
    stack = "aws-vpc-dev"
    team  = "devops"
  }
  version = "3.16.0"
}
