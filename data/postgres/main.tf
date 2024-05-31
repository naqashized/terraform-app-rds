terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket         = "sample-hallo-backend"
    key            = "app/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "dev-cluster"
    encrypt        = true
  }
}

provider "aws" {
  region = "eu-central-1"
}

module "postgres" {
  source = "../../modules/postgres"

  db_name     = var.db_name
  db_username = var.db_username
  db_password = var.db_password
}
