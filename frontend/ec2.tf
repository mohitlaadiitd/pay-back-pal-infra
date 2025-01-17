resource "aws_instance" "frontend_ec2" {
  ami           = "ami-01816d07b1128cd2d"
  instance_type = "t2.micro"

  key_name = aws_key_pair.paybackpal-kp-frontend-iac.key_name

  security_groups = [aws_security_group.allow_http_https_ssh.name]
}


