
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

  // Networking settings
  vpc_name = var.vpc_name
  vpc_cidr = var.vpc_cidr
  domain   = var.domain

  subnet_public_name = var.subnet_public_name
  subnet_public_cidr = var.subnet_public_cidr

  // Instance settings
  instance_public     = var.instance_public
  instance_name       = var.instance_name
  instance_private_ip = var.instance_private_ip
  instance_type       = var.instance_type
  template            = var.template
  root_disk_size      = var.root_disk_size
}
