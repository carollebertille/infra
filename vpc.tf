resource "aws_vpc" "vpcproducts" {
  # The CIDR block for the VPC.
  cidr_block = var.cidrblock

  # Makes your instances shared on the host.
  instance_tenancy = "default"

  # Required for EKS. Enable/disable DNS support in the VPC.
  enable_dns_support = var.instance

  # Required for EKS. Enable/disable DNS hostnames in the VPC.
  enable_dns_hostnames = var.instance

  tags = {
    Name = var.tag
  }
}
