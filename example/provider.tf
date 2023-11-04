provider "aws" {
  region = "eu-west-1"
}

module "secret" {
  source = "../"

  secret_name = "example-secret"
}
