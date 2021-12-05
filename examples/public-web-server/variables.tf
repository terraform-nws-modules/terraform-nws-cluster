# ---------------------------------------------------------------------------------------------------------------------
# VPC settings
# ---------------------------------------------------------------------------------------------------------------------
variable "vpc_name" {
  description = "Your VPC name"
  type        = string
}

variable "vpc_cidr" {
  description = "Your VPC full CIDR"
  type        = string
}

variable "domain" {
  description = "Your VPC network domain"
  type        = string
}

# ---------------------------------------------------------------------------------------------------------------------
# Public subnets settings
# ---------------------------------------------------------------------------------------------------------------------
variable "subnet_public_name" {
  description = "Your public subnets name"
  type        = list(string)
  default     = null
}
variable "subnet_public_cidr" {
  description = "Your public subnets CIDR"
  type        = list(string)
  default     = null
}

# ---------------------------------------------------------------------------------------------------------------------
# Instance settings
# ---------------------------------------------------------------------------------------------------------------------
variable "instance_public" {
  description = "Make the instance public ?"
  type        = bool
  default     = false
}

variable "instance_private_ip" {
  type    = list(string)
  default = ["10.0.1.10"]
}

variable "instance_name" {
  type    = list(string)
  default = ["VM0"]
}

variable "instance_type" {
  type    = list(string)
  default = ["t2.micro"]
}

variable "template" {
  type    = list(string)
  default = ["Ubuntu 21.10"]
}

variable "root_disk_size" {
  type    = list(number)
  default = [10]
}

variable "keypair" {
  description = "SSH keypair"
  type        = string
  default     = null
}
