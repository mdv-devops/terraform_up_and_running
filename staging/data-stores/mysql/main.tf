terraform {
  backend "s3" {
    bucket         = "mdv-terraform-state"
    key            = "test/staging/data_stores/mysql/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tfstate_locks"
    encrypt        = true
  }
}
provider "aws" {
  region = "us-east-1"
}

resource "aws_db_instance" "db" {
  identifier           = "simple-mysql-db"
  allocated_storage    = 10
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  parameter_group_name = "default.mysql5.7"
  username             = "administrator"
  password             = data.aws_ssm_parameter.mysql_db_password.value
  apply_immediately    = true
  skip_final_snapshot  = true
  tags = {
    Name = "Simple MySQL DB"
  }
}
