terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.67.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "test_instance" {
  ami           = "ami-0889a44b331db0194"
  instance_type = "t2.micro"
  tags = {
    "Name" : "ExampleTerraformInstance"
  }
}