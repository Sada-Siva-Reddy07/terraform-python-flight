#instance
resource "aws_instance" "flight" {
  ami                         = "ami-0208423bef18c17d1"
  instance_type               = "t3.micro"
  key_name                    = "stockhol"
  vpc_security_group_ids      = [aws_security_group.web-sg.id]
  subnet_id                   = aws_subnet.public-subnet1.id
  associate_public_ip_address = true
  user_data                   = file("data.sh")
  tags = {
    name = "flight"
  }
}
