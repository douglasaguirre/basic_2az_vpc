resource "aws_vpc" "dev" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = "dev"
  }
}
