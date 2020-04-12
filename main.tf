terraform {
  required_version = ">= 0.12, < 0.13"
}

provider "aws" {
  region = "ap-south-1"

  # Allow any 2.x version of the AWS provider
  version = "~> 2.0"
}

resource "aws_instance" "example" {
  ami           = "ami-0470e33cd681b2476"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-example"
  }
}

