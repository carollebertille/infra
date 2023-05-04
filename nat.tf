resource "aws_nat_gateway" "ngw1" {
  allocation_id = aws_eip.nat1.id
  subnet_id     = aws_subnet.web1a.id

  tags = {
    Name = "ngw1"
  }
}

resource "aws_nat_gateway" "ngw2" {
  allocation_id = aws_eip.nat2.id
  subnet_id     = aws_subnet.web1b.id

  tags = {
    Name = "ngw2"
  }
}