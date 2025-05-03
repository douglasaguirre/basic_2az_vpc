resource "tls_private_key" "tls_key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "local_file" "control_private_key_pem" {
  content  = tls_private_key.tls_key.private_key_pem
  filename = var.private_key_output_path
}

resource "aws_key_pair" "bastion_keypair" {
  key_name   = var.key_pair_name
  public_key = tls_private_key.tls_key.public_key_openssh
}
