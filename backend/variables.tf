# local variables
locals {
  public_key = "~/.ssh/paybackpal-backend-iac.pem.pub"
  region     = "us-east-1"
  ami        = "ami-01816d07b1128cd2d"
  type       = "t2.micro"

  db_type            = "db.t4g.micro"
  db_identifier      = "pbp-db"
  db_master_username = "pbpadmin"
  db_master_password = "pbpadminpassword"
}