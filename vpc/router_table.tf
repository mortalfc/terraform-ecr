resource "aws_route_table" "ml_router_table" {
  vpc_id = aws_vpc.ml_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ml_internet_qetway.id
  }

  tags = {
    Name = "ML Public subnet"
  }
}

resource "aws_route_table_association" "ta_public" {
  subnet_id      = aws_subnet.ml_subnet_public.id
  route_table_id = aws_route_table.ml_router_table.id
}