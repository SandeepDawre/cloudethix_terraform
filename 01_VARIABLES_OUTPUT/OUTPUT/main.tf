
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


resource "aws_eip" "lb" {
  vpc      = true
}

output "eip_pub_ip" {
  value = aws_eip.lb.public_ip
}