terraform {
  required_version = ">= 1.0.10"

  required_providers {
    nws = {
      source  = "nws/nws"
      version = "0.1.2"
    }
  }
}

module "vpc_networks" {
  source = "github.com/terraform-nws-modules/terraform-nws-vpc-networks/src"

  // VPC
  vpc_name = var.vpc_name
  vpc_cidr = var.vpc_cidr
  domain   = var.domain

  // Subnets
  subnet_private_name = var.subnet_private_name
  subnet_private_cidr = var.subnet_private_cidr
  subnet_public_name  = var.subnet_public_name
  subnet_public_cidr  = var.subnet_public_cidr

  // ACL 
  acl_name              = var.acl_name
  acl_allowed_cidr_list = var.acl_allowed_cidr_list
  acl_allowed_port_list = var.acl_allowed_port_list
}

module "instance" {
  source = "github.com/terraform-nws-modules/terraform-nws-instance/src"

  count = length(var.subnet_cidr)

  // FIXME: May create many instances on each subnet  
  network_id     = module.vpc_networks.id[count.index]
  ip             = var.instance_private_ip
  name           = var.instance_name
  instance_type  = var.instance_type
  template       = var.template
  root_disk_size = var.root_disk_size
  keypair        = var.keypair

}
