
terraform {
  required_version = ">= 1.0.10"

  required_providers {
    nws = {
      source  = "nws/nws"
      version = "0.1.2"
    }
  }
}

module "cluster" {
  source = "../../src"

  vpc-name    = var.vpc-name
  subnet-name = var.subnet-name
  cidr        = var.cidr
  domain      = var.domain
}
