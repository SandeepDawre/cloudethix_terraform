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

resource "aws_iam_user" "lb" {
  name = var.iam_user_name
  path = var.iam_user_path
}


resource "aws_instance" "automation_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
}

resource "aws_security_group" "automation_sg" {
  name        = var.sg_name
  vpc_id      = var.vpc_id
}
