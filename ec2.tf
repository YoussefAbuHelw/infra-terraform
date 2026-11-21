resource "aws_instance" "web" {
  ami                         = "ami-083dedce92603a2ad"
  instance_type               = "t3.micro"
  subnet_id                   = aws_subnet.subnet1.id
  associate_public_ip_address = true

  tags = {
    Name        = "My EC2 Instance"
    Environment = "Dev"
  }
}
