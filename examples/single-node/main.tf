
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

  vpc-name            = var.vpc-name
  subnet-name         = var.subnet-name
  instance-name       = var.instance-name
  cidr                = var.cidr
  domain              = var.domain
  instance-private-ip = var.instance-private-ip
  instance_type       = var.instance_type
  template            = var.template
  root_disk_size      = var.root_disk_size
}
