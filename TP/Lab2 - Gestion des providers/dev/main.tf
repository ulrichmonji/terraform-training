provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA5HPA5JMV47VBP7ND"
  secret_key = "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"
  version = ">=4.0"
}

terraform {
  backend "s3" {
    bucket = "terraform-backend-ulrich"
    key    = "ulrich.tfstate"
    region = "us-east-1"
    access_key = "AKIA5HPA5JMV47VBP7ND"
    secret_key = "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"
  }
}

module "ec2" {
  source = "../modules/ec2module"
  instancetype = "t2.nano"
  aws_common_tag = {
    Name = "ec2-dev-ulrich"
  }
  sg_name = "dev-ulrich-sg"
}
