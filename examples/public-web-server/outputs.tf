# ---------------------------------------------------------------------------------------------------------------------
# VPC outputs
# ---------------------------------------------------------------------------------------------------------------------
output "vpc_public_ip" {
  description = "VPC Public IP"
  value       = module.cluster.vpc_public_ip
}

output "vpc_id" {
  description = "VPC internal ID"
  value       = module.cluster.vpc_id
}

output "domain" {
  description = "Subnet domain"
  value       = module.cluster.domain
}

# ---------------------------------------------------------------------------------------------------------------------
# Subnets outputs
# ---------------------------------------------------------------------------------------------------------------------
output "subnet_private_id" {
  description = "UUID list of your private subnets"
  value       = module.cluster.subnet_private_id
}

output "subnet_public_id" {
  description = "UUID list of your public subnets"
  value       = module.cluster.subnet_public_id
}

output "subnet_public_acl_id" {
  description = "ACL ID list for your public subnets"
  value       = module.cluster.subnet_public_acl_id
}

output "subnet_public_acl_rule_id" {
  description = "ACL Rule ID list for your public subnets"
  value       = module.cluster.subnet_public_acl_rule_id
}

# ---------------------------------------------------------------------------------------------------------------------
# Instance outputs
# ---------------------------------------------------------------------------------------------------------------------
output "instance_name" {
  description = "Instance names"
  value       = module.cluster.instance_name
}

output "instance_id" {
  description = "Instance IDs"
  value       = module.cluster.instance_id
}
