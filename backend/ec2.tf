# create a ec2 instance to run backend
resource "aws_instance" "backend_ec2" {
  ami           = local.ami
  instance_type = local.type

  key_name = aws_key_pair.paybackpal-kp-backend-iac.key_name

  security_groups = [aws_security_group.allow_http_https_ssh.name]

}