resource "aws_subnet" "private-1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.11.0/24"
  availability_zone = "eu-central-1a"

  tags = {
    Name = "private-1"
  }
}

resource "aws_subnet" "private-2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.12.0/24"
  availability_zone = "eu-central-1b"

  tags = {
    Name = "private-2"
  }
}

resource "aws_subnet" "private-3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.13.0/24"
  availability_zone = "eu-central-1c"

  tags = {
    Name = "private-3"
  }
}
