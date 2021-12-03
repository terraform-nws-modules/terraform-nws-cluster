variable "vpc-name" {
  description = "Your VPC name"
  type        = string
}

variable "subnet-name" {
  description = "Your private subnet name"
  type        = string
}

variable "instance-name" {
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

variable "instance-private-ip" {
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
