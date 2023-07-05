provider "aws" {
  region     = "us-east-1"
  access_key = "XXXX"
  secret_key = "XXXX"
}

resource "aws_instance" "myec2" {
  ami           = "ami-0715c1897453cabd1"
  instance_type = lookup(var.instance_type, terraform.workspace)

  root_block_device {
    delete_on_termination = true
  }
}

variable "instance_type" {
    type = map

    default = {
        default = "t2.micro"
        dev = "t2.micro"
        prd = "t2.large"
    }
}
