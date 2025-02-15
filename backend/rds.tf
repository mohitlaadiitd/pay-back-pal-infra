# create a new RDS instance and attach it to the ec2 instance
resource "aws_db_instance" "backend_db" {
  allocated_storage      = 10
  identifier             = local.db_identifier
  engine                 = "postgres"
  instance_class         = local.db_type
  username               = local.db_master_username
  password               = local.db_master_password
  skip_final_snapshot    = true
  publicly_accessible    = false
  apply_immediately      = true
  multi_az               = false
  replicate_source_db    = null
  vpc_security_group_ids = [aws_security_group.db_security_group.id]
}

# create a new RDS security group
resource "aws_security_group" "db_security_group" {
  name = "paybackpal-sg-db-iac"

  ingress {
    from_port       = 5432
    to_port         = 5432
    protocol        = "tcp"
    security_groups = [aws_security_group.allow_http_https_ssh.id]
  }
}