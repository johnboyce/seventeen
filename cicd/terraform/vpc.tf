# VPC
resource "aws_vpc" "seventeen-vpc" {
  cidr_block = "10.0.0.0/16"
  instance_tenancy = "default"
  enable_dns_support = "true"
  enable_dns_hostnames = "true"
  enable_classiclink = "false"
}

# SUBNETS
resource "aws_subnet" "seventeen_pub_us-east-1-a" {
  vpc_id = aws_vpc.seventeen-vpc.id
  cidr_block = "10.0.0.0/24"
  map_public_ip_on_launch = "true"
  availability_zone = "us-east-1a"
}

resource "aws_subnet" "seventeen_pub_us-east-1-b" {
  vpc_id = aws_vpc.seventeen-vpc.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = "true"
  availability_zone = "us-east-1b"

}

resource "aws_subnet" "seventeen_priv_us-east-1-a" {
  vpc_id = aws_vpc.seventeen-vpc.id
  cidr_block = "10.0.128.0/24"
  map_public_ip_on_launch = "true"
  availability_zone = "us-east-1a"
}

resource "aws_subnet" "seventeen_priv_us-east-1-b" {
  vpc_id = aws_vpc.seventeen-vpc.id
  cidr_block = "10.0.129.0/24"
  map_public_ip_on_launch = "true"
  availability_zone = "us-east-1b"
}

# Internet GW
resource "aws_internet_gateway" "seventeen-ig" {
  vpc_id = aws_vpc.seventeen-vpc.id
}

# NAT Gateways
resource "aws_eip" "nat1" {
  vpc      = true
}

resource "aws_eip" "nat2" {
  vpc      = true
}

resource "aws_nat_gateway" "seventeen-ng-az-1" {
  allocation_id = aws_eip.nat1.id
  subnet_id = aws_subnet.seventeen_pub_us-east-1-a.id
  depends_on = [aws_internet_gateway.seventeen-ig]
}

resource "aws_nat_gateway" "seventeen-ng-az-2" {
  allocation_id = aws_eip.nat2.id
  subnet_id = aws_subnet.seventeen_pub_us-east-1-b.id
  depends_on = [aws_internet_gateway.seventeen-ig]
}

# MAIN-PUBLIC route table
resource "aws_route_table" "main-public" {
  vpc_id = aws_vpc.seventeen-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.seventeen-ig.id
  }
}

# Route association
resource "aws_route_table_association" "main-public-1-a" {
  subnet_id = aws_subnet.seventeen_pub_us-east-1-a.id
  route_table_id = aws_route_table.main-public.id
}

resource "aws_route_table_association" "main-public-1-b" {
  subnet_id = aws_subnet.seventeen_pub_us-east-1-b.id
  route_table_id = aws_route_table.main-public.id
}

# PRIVATE-AZ-1 route table
resource "aws_route_table" "private-az-1" {
  vpc_id = aws_vpc.seventeen-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.seventeen-ng-az-1.id
  }
}

# Route association
resource "aws_route_table_association" "main-private-1-a" {
  subnet_id = aws_subnet.seventeen_priv_us-east-1-a.id
  route_table_id = aws_route_table.private-az-1.id
}

# PRIVATE-AZ-2 route table
resource "aws_route_table" "private-az-2" {
  vpc_id = aws_vpc.seventeen-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.seventeen-ng-az-2.id
  }
}

# Route association
resource "aws_route_table_association" "main-private-1-b" {
  subnet_id = aws_subnet.seventeen_priv_us-east-1-b.id
  route_table_id = aws_route_table.private-az-2.id
}
