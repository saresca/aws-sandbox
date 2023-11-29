// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

data "terraform_remote_state" "vpc" {
  backend = "remote"
  config = {
    organization = "adub-widgets"
    workspaces = {
      name = "aws-vpc-dev"
    }
  }
  defaults = {
    vpc_id = "vpc-123456789"
    private_subnets = [
      "subnet-123456789",
    ]
  }
}
