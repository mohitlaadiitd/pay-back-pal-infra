# local variables
locals {
  public_key = "~/.ssh/paybackpal-backend-iac.pem.pub"
  region     = "us-east-1"
  ami        = "ami-01816d07b1128cd2d"
  type       = "t2.micro"
}