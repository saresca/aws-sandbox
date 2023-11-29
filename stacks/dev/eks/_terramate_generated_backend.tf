// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "remote" {
    organization = "adub-widgets"
    workspaces {
      name = "aws-eks-dev"
    }
  }
}
