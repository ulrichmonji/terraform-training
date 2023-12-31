provider "aws" {
  region     = "us-east-1"
  access_key = "XXXX"
  secret_key = "XXXX"
}

resource "aws_instance" "dev" {
    ami           = "ami-0715c1897453cabd1"
    instance_type = "t2.micro"
    count = var.istest == true ? 3 : 0 
}

resource "aws_instance" "prod" {
    ami           = "ami-0715c1897453cabd1"
    instance_type = "t2.large"
    count = var.istest == false ? 1 : 0
}

variable "istest" {
}