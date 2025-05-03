# Região AWS
region = "us-east-1"

# CIDR para o VPC
vpc_cidr_block = "172.20.0.0/16"

# CIDR para sub-redes públicas
public_subnet_cidrs = [
  "172.20.1.0/24",
  "172.20.2.0/24"
]

# CIDR para sub-redes privadas
private_subnet_cidrs = [
  "172.20.3.0/24",
  "172.20.4.0/24"
]

# Zonas de disponibilidade
availability_zones = [
  "us-east-1a",
  "us-east-1b"
]

# ID da AMI para o bastion host
ami_id = "ami-0f88e80871fd81e91"

# Tipo de instância para o bastion host
instance_type = "t2.micro"

# Nome do par de chaves SSH
key_pair_name = "bastion_keypair"

# Caminho para salvar o arquivo PEM
private_key_output_path = "/home/seuusuario/.ssh/bastion_keypair.pem"
