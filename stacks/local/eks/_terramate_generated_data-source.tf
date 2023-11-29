// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

data "terraform_remote_state" "vpc" {
  backend = "local"
  config = {
    path = "../vpc/terraform.tfstate"
  }
  defaults = {
    vpc_id = "vpc-123456789"
    private_subnets = [
      "subnet-123456789",
    ]
  }
}
