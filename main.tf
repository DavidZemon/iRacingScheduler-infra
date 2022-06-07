terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.17.1"
    }
  }
}

provider "aws" {
  profile = "default"
  region = "us-east-2"
}

resource "aws_dynamodb_table" "season_schedule" {
  name = "season_schedule"
  billing_mode = "PAY_PER_REQUEST"
}
