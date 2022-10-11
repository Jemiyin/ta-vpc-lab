resource "aws_subnet" "public-1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.1.0/24"
  availability_zone = "eu-central-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-1"
  }
}

resource "aws_subnet" "public-2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.2.0/24"
  availability_zone = "eu-central-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-2"
  }
}

resource "aws_subnet" "public-3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.3.0/24"
  availability_zone = "eu-central-1c"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-3"
  }
}