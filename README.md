
# Terraform VPC Setup

This repository contains a set of Terraform files to create a basic AWS infrastructure. It configures a VPC, public and private subnets, bastion hosts, NAT Gateways, an Internet Gateway, and security rules to allow remote SSH access to the bastion hosts from the public IP that runs Terraform.

## Structure

- **bastion.tf**: Creates the bastion hosts in the public subnets.
- **internet_gateway.tf**: Creates an Internet Gateway for the VPC.
- **keypair.tf**: Generates an SSH key and creates the key pair in AWS.
- **nat_gateway.tf**: Creates NAT Gateways for the private subnets.
- **outputs.tf**: Defines the infrastructure outputs, such as the public IP of the bastion hosts.
- **provider.tf**: Configures the AWS provider to use the credentials and region.
- **route_table.tf**: Configures the route tables for the public and private subnets.
- **security_group.tf**: Defines the Security Group that allows SSH access to the bastion hosts.
- **subnet.tf**: Creates public and private subnets in the VPC.
- **variables.tf**: Variables to configure the infrastructure parameters.
- **versions.tf**: Defines the Terraform version and the AWS provider.
- **vpc.tf**: Creates the VPC and defines the CIDR block for the VPC.

## Prerequisites

- **Terraform**: Make sure Terraform is installed.
- **AWS CLI**: AWS credentials need to be configured on your machine.

## How to Use

1. Clone the repository:

2. Configure the variables in the `terraform.tfvars` file (or create your own `*.tfvars` file):
   - **region**: AWS region (e.g., `us-west-2`)
   - **vpc_cidr_block**: CIDR block for the VPC (e.g., `10.0.0.0/16`)
   - **public_subnet_cidrs**: CIDRs for the public subnets (e.g., `["10.0.1.0/24", "10.0.2.0/24"]`)
   - **private_subnet_cidrs**: CIDRs for the private subnets (e.g., `["10.0.3.0/24", "10.0.4.0/24"]`)
   - **availability_zones**: AWS availability zones (e.g., `["us-west-2a", "us-west-2b"]`)
   - **ami_id**: AMI ID for the bastion hosts.
   - **instance_type**: Instance type for the bastion hosts (e.g., `t2.micro`).
   - **key_pair_name**: SSH key pair name.
   - **private_key_output_path**: Path where the private key will be saved locally.

3. Initialize Terraform:
   ```bash
   terraform init
   ```

4. Validate the configuration:
   ```bash
   terraform fmt
   terraform validate
   terraform plan
   ```

5. Apply the infrastructure:
   ```bash
   terraform apply
   ```

6. After applying, you can access the bastion hosts using the generated public IP as output, with the SSH command:
   ```bash
   ssh -i <private_key_path> ec2-user@<bastion_host_public_ip>
   ```

## Outputs

- **bastion_host_1_public_ip**: Public IP of Bastion Host 1.
- **bastion_host_2_public_ip**: Public IP of Bastion Host 2.

## File Structure

- **bastion.tf**: Definition of the bastion hosts.
- **internet_gateway.tf**: Definition of the Internet Gateway.
- **keypair.tf**: SSH key pair generation.
- **nat_gateway.tf**: Definition of the NAT Gateways.
- **outputs.tf**: Infrastructure outputs.
- **provider.tf**: AWS provider configuration.
- **route_table.tf**: Definition of the routes.
- **security_group.tf**: Security rules for the bastion hosts.
- **subnet.tf**: Creation of the subnets.
- **variables.tf**: Definition of the used variables.
- **versions.tf**: Definition of the Terraform and AWS provider versions.
- **vpc.tf**: Definition of the VPC.
