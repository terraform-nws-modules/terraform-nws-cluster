variable "vpc_name" {
  description = "Your VPC name"
  type        = string
}

variable "subnet_name" {
  description = "Your private subnet name"
  type        = string
}

variable "instance_name" {
  type = list(string)
}

variable "cidr" {
  description = "Your VPC full CIDR"
  type        = string
}

variable "domain" {
  description = "Your VPC network domain"
  type        = string
}

variable "instance_private_ip" {
  type = list(string)
}

variable "instance_type" {
  type = list(string)
}

variable "template" {
  type = list(string)
}

variable "root_disk_size" {
  type = list(number)
}
