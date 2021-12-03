output "public_ip" {
  description = "VPC public IP"
  value       = module.cluster.vpc_nat_ip
}

output "vpc_id" {
  description = "VPC UUID"
  value       = module.cluster.vpc_id
}

output "subnet_id" {
  description = "Subnet UUID"
  value       = module.cluster.subnet_id
}

output "domain" {
  description = "Network domain of the new subnet"
  value       = module.cluster.domain
}
