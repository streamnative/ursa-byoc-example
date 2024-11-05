terraform {
  required_providers {
    streamnative = {
      source  = "streamnative/streamnative"
    }
  }
}

provider "streamnative" {
  # create a serviceaccount with super-admin permission: https://docs.streamnative.io/docs/service-accounts#create-a-service-account
  # download the oauth2 key credentials file: https://docs.streamnative.io/docs/service-accounts#get-the-service-account-key-file-or-token
  key_file_path = "/path/to/ursa-byoc-example/sn-resources/key.json"
}

resource "streamnative_cloud_connection" "ursa_connection" {
    organization = var.org_id
    name = "usra-aws"

    type = "aws"
    aws {
        account_id = var.account_id
    }
}

resource "streamnative_cloud_environment" "ursa_environment" {
    organization = var.org_id
    region = var.region
    cloud_connection_name = streamnative_cloud_connection.ursa_connection.name
    environment_type = "production"

    network {
      cidr = "10.60.0.0/16"
    }
}