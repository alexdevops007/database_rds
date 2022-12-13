provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAT7NUNHQOXLP5N7V5"
  secret_key = "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"
}

resource "aws_db_instance" "default" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true

  tags = {
    Name = "My-DB-rds"
  }
}
