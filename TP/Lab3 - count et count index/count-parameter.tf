# provider "aws" {
#   region     = "us-east-1"
#   access_key = "XXXX"
#   secret_key = "XXXX"
# }

resource "aws_instance" "instance-1" {
    ami           = "ami-0715c1897453cabd1"
    instance_type = "t2.micro"
    count = 3 
}