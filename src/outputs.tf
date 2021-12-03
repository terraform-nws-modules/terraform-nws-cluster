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
  value       = module.subnet.id
}

output "domain" {
  description = "Private subnet domain"
  value       = module.subnet.domain
}
