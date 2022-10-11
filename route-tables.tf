#route tables redirects internet traffic
#Public route table, directs internet traffic to the internet gateway for public access
resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.int_gw.id
  }

  tags = {
    Name = "public_route_table"
  }
}


#Private route table, redirects all privat traffic to the nat gateway for security
resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "192.168.11.0/24"
    gateway_id = aws_nat_gateway.nat_gw.id
  }

  tags = {
    Name = "private_route_table"
  }
}


#route table association (public)
resource "aws_route_table_association" "public_route_table_assoc_1" {
  subnet_id      = aws_subnet.public-1.id
  route_table_id = aws_route_table.public_route_table.id
}


resource "aws_route_table_association" "public_route_table_assoc_2" {
  subnet_id      = aws_subnet.public-2.id
  route_table_id = aws_route_table.public_route_table.id
}


resource "aws_route_table_association" "public_route_table_assoc_3" {
  subnet_id      = aws_subnet.public-3.id
  route_table_id = aws_route_table.public_route_table.id
}



#route table association (private)
resource "aws_route_table_association" "private_route_table_assoc_1" {
  subnet_id      = aws_subnet.private-1.id
  route_table_id = aws_route_table.private_route_table.id
}


resource "aws_route_table_association" "private_route_table_assoc_2" {
  subnet_id      = aws_subnet.private-2.id
  route_table_id = aws_route_table.private_route_table.id
}


resource "aws_route_table_association" "private_route_table_assoc_3" {
  subnet_id      = aws_subnet.private-3.id
  route_table_id = aws_route_table.private_route_table.id
}