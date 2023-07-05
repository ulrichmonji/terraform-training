provider "aws" {
  region     = "us-east-1"
  access_key = "XXXX"
  secret_key = "XXXX"
}
locals {
    common_tags = {
        Owner = "EazyTraining-Ulrich"
        service = "Backend"
    }
}
resource "aws_instance" "app-dev" {
    ami           = "ami-0715c1897453cabd1"
    instance_type = "t2.micro"
    tags = local.common_tags    
}

resource "aws_instance" "db-dev" {
    ami           = "ami-0715c1897453cabd1"
    instance_type = "t2.micro"
    tags = local.common_tags    
}

resource "aws_ebs_volume" "db-ebs" {
    availability_zone = "us-west-2a"
    size = 8
    tags = local.common_tags    
}
