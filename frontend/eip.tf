resource "aws_eip" "frontend_eip" {
  instance = aws_instance.frontend_ec2.id
  domain   = "vpc"
}

output "frontend_eip" {
  value       = aws_eip.frontend_eip.public_ip
  description = "The public IP address of the frontend EC2 instance"
}