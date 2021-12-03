
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

  vpc_name            = var.vpc_name
  subnet_name         = var.subnet_name
  instance_name       = var.instance_name
  cidr                = var.cidr
  domain              = var.domain
  instance_private_ip = var.instance_private_ip
  instance_type       = var.instance_type
  template            = var.template
  root_disk_size      = var.root_disk_size
}
