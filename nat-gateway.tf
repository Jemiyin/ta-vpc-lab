#AWS eip
resource "aws_eip" "nat_ip" {
  vpc      = true
}


#Nat Gateway
resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.nat_ip.id
  subnet_id     = aws_subnet.public-1.id

  tags = {
    Name = "nat_gw"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC. tells terraform to wait for internet gateway to execute before nat gateway
  depends_on = [aws_internet_gateway.int_gw]
}