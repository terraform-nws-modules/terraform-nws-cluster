# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------
variable "vpc_cidr" {
  description = "Your VPC full CIDR"
  type        = string
}

variable "subnet_name" {
  description = "Your private subnet name"
  type        = list(string)
}

variable "instance_name" {
  type    = list(string)
  default = ["VM0"]
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------
variable "vpc_name" {
  description = "Your VPC name"
  type        = string
  default     = "vpc-mycompany"
}

variable "subnet_cidr" {
  description = "Your subnets CIDR"
  type        = list(string)
}

variable "subnet_public" {
  description = "Create a public subnet?"
  type        = bool
  default     = false
}

variable "domain" {
  description = "Your VPC network domain"
  type        = string
  default     = "my.local"
}

variable "instance_private_ip" {
  type    = list(string)
  default = ["10.0.1.10"]
}

variable "instance_type" {
  type    = list(string)
  default = ["t2.micro"]
}

variable "template" {
  type    = list(string)
  default = ["Ubuntu 20.04 LTS"]
}

variable "root_disk_size" {
  type    = list(number)
  default = [10]
}
