resource "aws_instance" "bastion_host_1" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public_subnet_1.id
  vpc_security_group_ids = [aws_security_group.bastion_sg.id]
  key_name               = aws_key_pair.bastion_keypair.key_name

  tags = {
    Name = "BastionHost-1"
  }
}

resource "aws_instance" "bastion_host_2" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public_subnet_2.id
  vpc_security_group_ids = [aws_security_group.bastion_sg.id]
  key_name               = aws_key_pair.bastion_keypair.key_name

  tags = {
    Name = "BastionHost-2"
  }
}
