resource "aws_instance" "name" {
  ami = "ami-079cd5448deeace01"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.main_1a.id

  tags = local.tags
}