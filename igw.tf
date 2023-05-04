resource "aws_internet_gateway" "igw" {
  depends_on = [
    aws_vpc.vpcproducts
  ]
  vpc_id = aws_vpc.vpcproducts.id

  tags = {
    Name = "igwproducts"
  }
}