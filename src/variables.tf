variable "vpc-name" {
  description = "Your VPC name"
  type        = string
}

variable "subnet-name" {
  description = "Your private subnet name"
  type        = string
}

variable "cidr" {
  description = "Your VPC full CIDR"
  type        = string
}

variable "domain" {
  description = "Your VPC network domain"
  type        = string
}
