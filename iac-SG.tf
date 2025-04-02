provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-12345678"  # Placeholder AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance"
  }

  security_groups = ["default"]  # Incorrect attribute, should be `vpc_security_group_ids`
}
