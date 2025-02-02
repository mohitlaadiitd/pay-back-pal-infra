# create a elastic ip for the ec2 instance
resource "aws_eip" "backend_eip" {
  instance = aws_instance.backend_ec2.id
  domain   = "vpc"
}

output "backend_eip" {
  value       = aws_eip.backend_eip.public_ip
  description = "The public IP address of the backend EC2 instance"
}