output "bastion_host_1_public_ip" {
  description = "Public IP of Bastion Host 1"
  value       = aws_instance.bastion_host_1.public_ip
}

output "bastion_host_2_public_ip" {
  description = "Public IP of Bastion Host 2"
  value       = aws_instance.bastion_host_2.public_ip
}
