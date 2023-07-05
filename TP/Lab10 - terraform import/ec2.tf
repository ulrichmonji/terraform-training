resource "aws_instance" "myec2" {
  ami           = "ami-0715c1897453cabd1"  
  instance_type = "t2.micro"
  key_name      = "votre paire de clé"
  vpc_security_group_ids = ["votre id"]
  subnet_id = "votre id"
  tags = {
    Name = "manuel"
  }
  root_block_device {
    delete_on_termination = true
  }
}