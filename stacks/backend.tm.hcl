# Generate '_terramate_generated_backend.tf' in each stack for Local File-System
generate_hcl "_terramate_generated_backend.tf" {
  content {
    terraform {

      backend "local" {
        path = global.local_tfstate_path
      }
    }
  }
}
