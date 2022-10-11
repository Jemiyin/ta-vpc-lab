resource "aws_internet_gateway" "int_gw" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "int_gw"
  }
}