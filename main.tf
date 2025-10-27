provider "aws" {
  region = "us-east-1"  # change region if needed
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0341d95f75f311023"  # Replace with a valid AMI ID
  instance_type = "t3.micro"
  key_name      = "mynewkeypair"  # Replace with an existing AWS key pair
  tags = {
    Name = "TerraformEC2"  # Modify instance name
  }
}
