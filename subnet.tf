resource "aws_subnet" "web1a" {
  depends_on = [
    aws_vpc.vpcproducts
  ]
  vpc_id                  = aws_vpc.vpcproducts.id
  cidr_block              = var.web1a
  map_public_ip_on_launch = var.instance
  availability_zone       = var.az1a
  tags = {
    Name = "subnetweb1a"
  }
}
resource "aws_subnet" "web1b" {
  depends_on = [
    aws_vpc.vpcproducts
  ]
  vpc_id                  = aws_vpc.vpcproducts.id
  cidr_block              = var.web1b
  map_public_ip_on_launch = var.instance
  availability_zone       = var.az1b
  tags = {
    Name = "subnetweb1b"
  }
}

resource "aws_subnet" "app1a" {
  depends_on = [
    aws_vpc.vpcproducts
  ]
  vpc_id            = aws_vpc.vpcproducts.id
  cidr_block        = var.app1a
  availability_zone = var.az1a
  tags = {
    Name = "subnetapp1a"
  }
}
resource "aws_subnet" "app1b" {
  depends_on = [
    aws_vpc.vpcproducts
  ]
  vpc_id            = aws_vpc.vpcproducts.id
  cidr_block        = var.app1b
  availability_zone = var.az1b
  tags = {
    Name = "subnetapp1b"
  }
}

resource "aws_subnet" "db1a" {
  depends_on = [
    aws_vpc.vpcproducts
  ]
  vpc_id            = aws_vpc.vpcproducts.id
  cidr_block        = var.db1a
  availability_zone = var.az1a
  tags = {
    Name = "subnetdb1a"
  }
}

resource "aws_subnet" "db1b" {
  depends_on = [
    aws_vpc.vpcproducts
  ]
  vpc_id            = aws_vpc.vpcproducts.id
  cidr_block        = var.db1b
  availability_zone = var.az1b
  tags = {
    Name = "subnetdb1b"
  }
}
