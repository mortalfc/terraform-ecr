resource "aws_internet_gateway" "ml_internet_qetway" {
  vpc_id = aws_vpc.ml_vpc.id

  tags = {
    Name = "ML Internet getway"
  }
}