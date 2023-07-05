provider "aws" {
  region     = "us-east-1"
  access_key = "XXXX"
  secret_key = "XXXX"
}

resource "aws_instance" "myec2" {
  ami           = "ami-0715c1897453cabd1"
  instance_type = "t2.micro"
  key_name      = "terraform"
  tags = {
    Name = "ec2-ulrich-NEW"
  }
  root_block_device {
    delete_on_termination = true
  }
}


resource "aws_instance" "myec2_2" {
  ami           = "ami-0715c1897453cabd1"
  instance_type = "t2.micro"
  key_name      = "terraform"
  tags = {
    Name = "ec2-ulrich-NEW"
  }
  root_block_device {
    delete_on_termination = true
  }
}
