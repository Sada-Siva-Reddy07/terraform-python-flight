#route table creation

resource "aws_route_table" "route" {
  vpc_id = aws_vpc.sada.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.sada-gateway.id
  }
  tags = {
    Name = "route to internet"
  }
}



#association

resource "aws_route_table_association" "route-as" {
  subnet_id      = aws_subnet.public-subnet1.id
  route_table_id = aws_route_table.route.id
}
