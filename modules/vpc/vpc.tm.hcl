# Generate '_terramate_generated_vpc.tf' in each stack
generate_hcl "_terramate_generated_vpc.tf" {
  content {

    module "vpc" {
      source  = "terraform-aws-modules/vpc/aws"
      version = "5.2.0"

      name       = global.name
      create_vpc = true

      cidr = global.vpc_cidr_block
      azs  = global.azs

      enable_ipv6 = false

      private_subnets = global.private_subnets

      public_subnets = global.public_subnets
      
      enable_nat_gateway   = false
      enable_dns_hostnames = true
    }
  }
}