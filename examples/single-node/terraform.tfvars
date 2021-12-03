vpc_name            = "vpc-mycorp"
subnet_name         = ["mycorp-private"]
instance_name       = ["VM0"]
vpc_cidr            = "10.0.1.0/24"
subnet_cidr         = ["10.0.1.0/24"]
subnet_public       = false
domain              = "mycorp.local"
instance_private_ip = ["10.0.1.10"]
instance_type       = ["t2.micro"]
root_disk_size      = [10]
template            = ["Ubuntu 20.04 LTS"]
