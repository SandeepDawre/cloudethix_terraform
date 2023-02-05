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
  name = "automation"
  path = "/system/"
}


resource "aws_instance" "automation_ec2" {
  ami           = "ami-01a4f99c4ac11b03c"
  instance_type = "t2.micro"
  security_groups = aws_security_group.automation_sg.name
  tags = {
    Name = "automation_ec2"
  }
}

resource "aws_security_group" "automation_sg" {
  name        = "automation_sg"
  description = "This is automation_sg"
  vpc_id      = "vpc-e352bd88"
}
