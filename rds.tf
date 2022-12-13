provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAT7NUNHQO3BJ3REGI"
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
    Name = "MyRdsDB"
  }
}
