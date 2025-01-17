resource "aws_key_pair" "paybackpal-kp-frontend-iac" {
  key_name   = "paybackpal-kp-frontend-iac"
  public_key = file(local.public_key)
}

output "frontend_ec2_public_key" {
  value       = aws_key_pair.paybackpal-kp-frontend-iac.public_key
  description = "The public key of the frontend EC2 instance"
}