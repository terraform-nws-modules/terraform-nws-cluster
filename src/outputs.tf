# ---------------------------------------------------------------------------------------------------------------------
# VPC outputs
# ---------------------------------------------------------------------------------------------------------------------
output "vpc_public_ip" {
  description = "VPC Public IP"
  value       = module.vpc_networks.vpc_public_ip
}

output "vpc_id" {
  description = "VPC internal ID"
  value       = module.vpc_networks.vpc_id
}

output "domain" {
  description = "Subnet domain"
  value       = module.vpc_networks.domain
}

# ---------------------------------------------------------------------------------------------------------------------
# Subnets outputs
# ---------------------------------------------------------------------------------------------------------------------
output "subnet_private_id" {
  description = "UUID list of your private subnets"
  value       = module.vpc_networks.subnet_private_id
}

output "subnet_public_id" {
  description = "UUID list of your public subnets"
  value       = module.vpc_networks.subnet_public_id
}

output "subnet_public_acl_id" {
  description = "ACL ID list for your public subnets"
  value       = module.vpc_networks.subnet_public_acl_id
}

output "subnet_public_acl_rule_id" {
  description = "ACL Rule ID list for your public subnets"
  value       = module.vpc_networks.subnet_public_acl_rule_id
}

# ---------------------------------------------------------------------------------------------------------------------
# Instance outputs
# ---------------------------------------------------------------------------------------------------------------------
output "instance_name" {
  description = "Instance names"
  value       = module.instance[*].name
}

output "instance_id" {
  description = "Instance IDs"
  value       = module.instance[*].id
}
