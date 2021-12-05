# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------
variable "vpc_cidr" {
  description = "Your VPC full CIDR"
  type        = string
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

variable "domain" {
  description = "Your VPC network domain"
  type        = string
  default     = "my.local"
}

# ---------------------------------------------------------------------------------------------------------------------
# Private subnets settings
# ---------------------------------------------------------------------------------------------------------------------
variable "subnet_private_name" {
  description = "Your private subnet name"
  type        = list(string)
  default     = null
}

variable "subnet_private_cidr" {
  description = "Your private subnets CIDR"
  type        = list(string)
  default     = null
}

# ---------------------------------------------------------------------------------------------------------------------
# Public subnets settings
# ---------------------------------------------------------------------------------------------------------------------
variable "subnet_public_name" {
  description = "Your public subnet name"
  type        = list(string)
  default     = null
}

variable "subnet_public_cidr" {
  description = "Your public subnets CIDR"
  type        = list(string)
  default     = null
}

variable "acl_name" {
  description = "Your ACL name"
  type        = string
  default     = "my-acl-public"
}

variable "acl_allowed_cidr_list" {
  description = "CIDR list for allowed ingress traffic. Allow all ingress traffic by default"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "acl_allowed_port_list" {
  description = "Port list for allowed ingress traffic"
  type        = list(string)
  default     = ["80", "30000-30001"]
}

# ---------------------------------------------------------------------------------------------------------------------
# Instance settings
# ---------------------------------------------------------------------------------------------------------------------
variable "public" {
  description = "Should the instance group be publicly available, e.g created in public subnets ?"
  type        = bool
  default     = false
}

variable "instance_name" {
  description = "Your instance name list"
  type        = list(string)
  default     = ["VM0"]
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
