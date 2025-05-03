# Terraform Infrastructure

Este repositório contém a infraestrutura como código (IaC) para provisionar recursos na AWS utilizando o Terraform.

## Estrutura do Projeto

- `environments/`: Contém os arquivos específicos para cada ambiente (ex: `dev`, `prod`).
- `modules/`: Contém módulos reutilizáveis, como o módulo de Bastion Host.
- `terraform.tfvars`: Arquivo com as variáveis de configuração.

## Como Usar

1. Configure suas variáveis no arquivo `environments/dev/terraform.tfvars`.
2. Execute `terraform init` para inicializar o projeto.
3. Execute `terraform plan` para visualizar as mudanças que serão feitas.
4. Execute `terraform apply` para aplicar a infraestrutura.

## Licença

Este projeto está licenciado sob a MIT License – veja o arquivo LICENSE para mais detalhes.