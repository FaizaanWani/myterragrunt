terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = var.instance_region
}

resource "aws_instance" "app_server" {
  ami           = var.instance_name
  instance_type = var.instance_type

  tags = {
    Name = var.instance_tag_name
    Description = var.instance_description
  }
}
