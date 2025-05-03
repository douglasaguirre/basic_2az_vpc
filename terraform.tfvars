# AWS Region
region = "us-east-1"

# CIDR for the VPC
vpc_cidr_block = "172.20.0.0/16"

# CIDR for public subnets
public_subnet_cidrs = [
  "172.20.1.0/24",
  "172.20.2.0/24"
]

# CIDR for private subnets
private_subnet_cidrs = [
  "172.20.3.0/24",
  "172.20.4.0/24"
]

# Availability Zones
availability_zones = [
  "us-east-1a",
  "us-east-1b"
]

# AMI ID for the bastion host
ami_id = "ami-0f88e80871fd81e91"

# Instance type for the bastion host
instance_type = "t2.micro"

# SSH key pair name
key_pair_name = "bastion_keypair"

# Path to save the PEM file
private_key_output_path = "/home/youruser/.ssh/bastion_keypair.pem"
