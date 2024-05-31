terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

resource "aws_db_instance" "example" {
  identifier_prefix   = "dbapp"
  engine              = "postgres"
  allocated_storage   = 10
  instance_class      = "db.t3.micro"
  # engine_version = "8.0.31"
  db_name             = var.db_name
  username            = var.db_username
  password            = var.db_password
  skip_final_snapshot = true
}
