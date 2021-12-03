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

  name   = var.vpc_name
  cidr   = var.vpc_cidr
  domain = var.domain
}

module "subnet" {
  source = "github.com/terraform-nws-modules/terraform-nws-subnet/src"

  name   = var.subnet_name
  cidr   = var.subnet_cidr
  domain = var.domain
  vpc_id = module.vpc.vpc_id
  public = var.subnet_public
}

module "instance" {
  source = "github.com/terraform-nws-modules/terraform-nws-instance/src"

  count = length(var.subnet_cidr)

  // FIXME: May create many instances on each subnet  
  network_id     = module.subnet.id[count.index]
  ip             = var.instance_private_ip
  name           = var.instance_name
  instance_type  = var.instance_type
  template       = var.template
  root_disk_size = var.root_disk_size
}
