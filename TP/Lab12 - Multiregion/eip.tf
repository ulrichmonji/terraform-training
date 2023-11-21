resource "aws_eip" "myeip" {
  domain = "vpc"
}

resource "aws_eip" "myeip01" {
  domain = "vpc"
  provider = aws.aws02
}
