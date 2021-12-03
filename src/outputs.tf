output "vpc_nat_ip" {
  description = "VPC External NAT IP"
  value       = module.vpc.vpc_nat_ip
}

output "vpc_id" {
  description = "VPC internal ID"
  value       = module.vpc.vpc_id
}

output "subnet_id" {
  description = "Private subnet ID"
  value       = module.subnet[*].id
}

output "domain" {
  description = "Private subnet domain"
  value       = module.subnet[*].domain
}

output "instance_name" {
  description = "Instance names"
  value       = module.instance[*].name
}

output "instance_id" {
  description = "Instance IDs"
  value       = module.instance[*].id
}
