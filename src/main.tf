terraform {
  required_version = ">= 1.0.10"

  required_providers {
    nws = {
      source  = "nws/nws"
      version = "0.1.2"
    }
  }
}

module "vpc" {
  source = "github.com/terraform-nws-modules/terraform-nws-vpc/src"

  name   = var.name
  cidr   = var.cidr
  domain = var.domain
}

module "subnet" {
  source = "github.com/terraform-nws-modules/terraform-nws-subnet/src"

  name   = var.name
  cidr   = var.cidr
  domain = var.domain
  vpc_id = module.vpc.vpc_id
}
