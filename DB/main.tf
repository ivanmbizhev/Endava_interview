provider "aws" {
  region = "eu-west-2"
}

resource "aws_db_instance" "example" {
  identifier_prefix   = "project-endava"
  engine              = "mysql"
  allocated_storage   = 10
  instance_class      = "db.t2.micro"
  name                = "example_database"
  username            = "admin"
  password            = "password"
}

terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "project-endava-state"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
    # Replace this with your DynamoDB table name!
    dynamodb_table = "project-endava-locks"
    encrypt        = true
  }
}
