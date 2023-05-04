resource "aws_route_table" "rtpub" {
  depends_on = [
    aws_vpc.vpcproducts
  ]
  vpc_id = aws_vpc.vpcproducts.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "rtpublic"
  }
}

resource "aws_route_table" "rtapp1a" {
  depends_on = [
    aws_vpc.vpcproducts
  ]
  vpc_id = aws_vpc.vpcproducts.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.ngw1.id
  }

  tags = {
    Name = "rtapp1a"
  }
}


resource "aws_route_table" "rtapp1b" {
  depends_on = [
    aws_vpc.vpcproducts
  ]
  vpc_id = aws_vpc.vpcproducts.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.ngw2.id
  }

  tags = {
    Name = "rtapp1b"
  }
}



resource "aws_route_table" "rtdb1a" {
  depends_on = [
    aws_vpc.vpcproducts
  ]
  vpc_id = aws_vpc.vpcproducts.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.ngw1.id
  }

  tags = {
    Name = "rtdb1a"
  }
}

resource "aws_route_table" "rtdb1b" {
  depends_on = [
    aws_vpc.vpcproducts
  ]
  vpc_id = aws_vpc.vpcproducts.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.ngw2.id
  }

  tags = {
    Name = "rtdb1b"
  }
}