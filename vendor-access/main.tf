provider "aws" {
  region     = "us-west-1"
  # see how to configure AWS provider: https://registry.terraform.io/providers/hashicorp/aws/latest/docs#authentication-and-configuration
  # access_key = "..."
  # secret_key = "..."
}

module "sn_managed_cloud" {
  source = "github.com/streamnative/terraform-managed-cloud//modules/aws/vendor-access?ref=v3.15.0"

  external_id = var.org_id
}