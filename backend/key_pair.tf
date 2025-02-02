# create a key pair for the ec2 instance
resource "aws_key_pair" "paybackpal-kp-backend-iac" {
  key_name   = "paybackpal-kp-backend-iac"
  public_key = file(local.public_key)
}

output "backend_ec2_public_key" {
  value       = aws_key_pair.paybackpal-kp-backend-iac.public_key
  description = "The public key of the backend EC2 instance"
}