resource "aws_eip" "ipam_ip1" {
  domain = "vpc"
}

resource "aws_eip" "ipam_ip2" {
  domain = "vpc"
}

resource "aws_nat_gateway" "nat_public_subnet_1" {
  allocation_id = aws_eip.ipam_ip1.id
  subnet_id     = aws_subnet.public_subnet_1.id

  tags = {
    Name = "GW NAT - PUBLIC SUBNET 1"
  }

  depends_on = [aws_internet_gateway.igw]
}

resource "aws_nat_gateway" "nat_public_subnet_2" {
  allocation_id = aws_eip.ipam_ip2.id
  subnet_id     = aws_subnet.public_subnet_2.id

  tags = {
    Name = "GW NAT - PUBLIC SUBNET 2"
  }

  depends_on = [aws_internet_gateway.igw]
}
