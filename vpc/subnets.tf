resource "aws_subnet" "ml_subnet_private" {
  vpc_id     = aws_vpc.ml_vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Private ML"
  }
}

resource "aws_subnet" "ml_subnet_public" {
  vpc_id                  = aws_vpc.ml_vpc.id
  cidr_block              = "10.0.101.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "Public ML"
  }
}