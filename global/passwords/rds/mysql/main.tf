terraform {
  backend "s3" {
    bucket         = "mdv-terraform-state"
    key            = "test/global/passwords/rds/mysql/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tfstate_locks"
    encrypt        = true
  }
}
provider "aws" {
  region = "us-east-1"
}

resource "random_string" "test_mysql_db_password" {
  length           = 16
  special          = true
  override_special = "!@#&"
}

resource "aws_ssm_parameter" "mysql_db_password" {
  name  = "/test/mysql"
  type  = "SecureString"
  value = random_string.test_mysql_db_password.result
}
