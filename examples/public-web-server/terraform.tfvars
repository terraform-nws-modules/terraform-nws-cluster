vpc_name           = "vpc-test"
vpc_cidr           = "10.0.1.0/24"
domain             = "my.local"
subnet_public_name = ["net0-public", "net1-public"]
subnet_public_cidr = ["10.0.1.20/30", "10.0.1.30/30"]

instance_name       = ["VM0"]
instance_private_ip = ["10.0.1.10"]
instance_type       = ["t2.micro"]
root_disk_size      = [10]
template            = ["Ubuntu 21.10"]
keypair             = "bku"