terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.53.0"
    }
  }
}

provider "aws" {
  # Configuration options
}



locals {
    type = "t2.micro"
}

resource "aws_instance" "app-dev" {
   ami = "ami-082b5a644766e0e6f"
   instance_type = local.type
}

resource "aws_ebs_volume" "my_ebs" {
  availability_zone = "us-west-2a"
  size              = 8
}