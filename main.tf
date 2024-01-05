# Declare the required providers and their version constraints for this Terraform configuration
terraform {
  required_providers {
    boundary = {
      source  = "hashicorp/boundary"
      version = ">=1.0.7"
    }
    http = {
      source  = "hashicorp/http"
      version = ">=3.2.1"
    }
    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = ">=2.3.2"
    }
    hcp = {
      source  = "hashicorp/hcp"
      version = ">=0.56.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = ">=4.0.4"
    }
  }
}

# Declare the provider for the AWS resource to be managed by Terraform
provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access
  secret_key = var.aws_secret
}

# Declare the provider for the HashiCorp Boundary resource to be managed by Terraform
provider "boundary" {
  # Use variables to provide values for the provider configuration
  addr                   = var.boundary_addr
  auth_method_login_name = var.boundary_admin_username
  auth_method_password   = var.boundary_admin_password

}
