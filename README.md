
# Terraform VPC Setup with Bastion Host and NAT Gateway

Este repositório contém um conjunto de arquivos Terraform para criar uma infraestrutura básica na AWS. Ele configura uma VPC, subnets públicas e privadas, bastion hosts, NAT Gateways, uma Internet Gateway e as regras de segurança para permitir o acesso remoto via SSH.

## Estrutura

- **bastion.tf**: Cria os bastion hosts nas subnets públicas.
- **internet_gateway.tf**: Cria uma Internet Gateway para a VPC.
- **keypair.tf**: Gera uma chave SSH e cria o par de chaves na AWS.
- **nat_gateway.tf**: Cria NAT Gateways para as subnets privadas.
- **outputs.tf**: Define os outputs da infraestrutura, como o IP público dos bastion hosts.
- **provider.tf**: Configuração do provider AWS para usar as credenciais e região.
- **route_table.tf**: Configura as tabelas de roteamento para as subnets públicas e privadas.
- **security_group.tf**: Define o Security Group que permite acesso SSH aos bastion hosts.
- **subnet.tf**: Cria subnets públicas e privadas na VPC.
- **variables.tf**: Variáveis para configurar os parâmetros da infraestrutura.
- **versions.tf**: Define a versão do Terraform e o provedor AWS.
- **vpc.tf**: Cria a VPC e define o bloco CIDR da VPC.

## Pré-requisitos

- **Terraform**: Certifique-se de ter o Terraform instalado.
- **AWS CLI**: As credenciais da AWS precisam estar configuradas na sua máquina.

## Como Usar

1. Clone o repositório:

2. Configure as variáveis no arquivo `terraform.tfvars` (ou crie seu próprio arquivo `*.tfvars`):
   - **region**: Região da AWS (ex: `us-west-2`)
   - **vpc_cidr_block**: Bloco CIDR para a VPC (ex: `10.0.0.0/16`)
   - **public_subnet_cidrs**: CIDRs para as subnets públicas (ex: `["10.0.1.0/24", "10.0.2.0/24"]`)
   - **private_subnet_cidrs**: CIDRs para as subnets privadas (ex: `["10.0.3.0/24", "10.0.4.0/24"]`)
   - **availability_zones**: Zones de disponibilidade da AWS (ex: `["us-west-2a", "us-west-2b"]`)
   - **ami_id**: ID da AMI para os bastion hosts.
   - **instance_type**: Tipo da instância para os bastion hosts (ex: `t2.micro`).
   - **key_pair_name**: Nome do par de chaves SSH.
   - **private_key_output_path**: Caminho onde a chave privada será salva localmente.

3. Inicialize o Terraform:
   ```bash
   terraform init
   ```

4. Valide a configuração:
   ```bash
   terraform validate
   ```

5. Aplique a infraestrutura:
   ```bash
   terraform apply
   ```

6. Após a aplicação, você pode acessar os bastion hosts usando o IP público gerado como output, com o comando SSH:
   ```bash
   ssh -i <private_key_path> ec2-user@<bastion_host_public_ip>
   ```

## Outputs

- **bastion_host_1_public_ip**: IP público do Bastion Host 1.
- **bastion_host_2_public_ip**: IP público do Bastion Host 2.

## Estrutura de Arquivos

- **bastion.tf**: Definição dos bastion hosts.
- **internet_gateway.tf**: Definição da Internet Gateway.
- **keypair.tf**: Geração do par de chaves SSH.
- **nat_gateway.tf**: Definição dos NAT Gateways.
- **outputs.tf**: Outputs da infraestrutura.
- **provider.tf**: Configuração do provider AWS.
- **route_table.tf**: Definição das rotas.
- **security_group.tf**: Regras de segurança para os bastion hosts.
- **subnet.tf**: Criação das subnets.
- **variables.tf**: Definição das variáveis usadas.
- **versions.tf**: Definição das versões do Terraform e do provedor AWS.
- **vpc.tf**: Definição da VPC.

