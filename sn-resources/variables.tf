variable "org_id" {
  type = string
  # get your StreamNative Cloud organization id: https://docs.streamnative.io/docs/organizations#cloud-organization-id
  default = "<your-organization-id>"
}

variable "account_id" {
  type = string
  default = "<your-aws-account-id>"
}

variable "region" {
  type = string
  default = "us-west-1"
}