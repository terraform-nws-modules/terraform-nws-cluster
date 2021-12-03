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

  name   = var.vpc-name
  cidr   = var.cidr
  domain = var.domain
}

module "subnet" {
  source = "github.com/terraform-nws-modules/terraform-nws-subnet/src"

  name   = var.subnet-name
  cidr   = var.cidr
  domain = var.domain
  vpc_id = module.vpc.vpc_id
}

module "instance" {
  source = "github.com/terraform-nws-modules/terraform-nws-instance/src"

  network_id     = module.subnet.id
  ip             = var.instance-private-ip
  name           = var.instance-name
  instance_type  = var.instance_type
  template       = var.template
  root_disk_size = var.root_disk_size
}
