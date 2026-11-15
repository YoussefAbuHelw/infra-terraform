resource "aws_vpc" "my_VPC" {

  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "Youssef VPC"
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.my_VPC.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id     = aws_vpc.my_VPC.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "Secondary"
  }
}


