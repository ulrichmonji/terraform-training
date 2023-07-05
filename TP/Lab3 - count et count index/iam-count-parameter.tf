provider "aws" {
  region     = "us-east-1"
  access_key = "XXX"
  secret_key = "XXX"
}

variable "elb_names" {
  type = list
  default = ["dev-loadbalancer","dev-loadbalancer","prod-loadbalancer"]
}

resource "aws_iam_user" "lb" {
    name = var.elb_names[count.index]
    count = 3 
    path = "/system/"
}