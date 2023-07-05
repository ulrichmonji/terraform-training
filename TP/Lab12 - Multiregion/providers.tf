provider "aws" {
  region     = "us-east-1"
  shared_credentials_files = ["path/to/credentials/file"]
}

provider "aws" {
  alias = "aws02"
  region     = "us-west-1"
  shared_credentials_file = "../credentials"
}