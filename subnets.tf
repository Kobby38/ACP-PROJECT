#public subnet
resource "aws_subnet" "acp-public-sub1" {
  vpc_id            = aws_vpc.acp-vpc.id
  cidr_block        = var.cidr-for-acp-public-sub1
  availability_zone = var.Availability-Zone1
  tags              = var.tag1
}

resource "aws_subnet" "acp-public-sub2" {
  vpc_id            = aws_vpc.acp-vpc.id
  cidr_block        = var.cidr-for-acp-public-sub2
  availability_zone = var.Availability-Zone2
  tags              = var.tag2
}

#private subnet
resource "aws_subnet" "acp-private-sub1" {
  vpc_id            = aws_vpc.acp-vpc.id
  cidr_block        = var.cidr-for-acp-priv-sub1
  availability_zone = var.Availability-Zone3
  tags              = var.tag3
}
#rds subnet group
resource "aws_subnet" "acp-db-subnet" {
  vpc_id            = aws_vpc.acp-vpc.id
  cidr_block        = var.cidr-for-acp-db-subnet
  availability_zone = var.Availability-Zone4
  tags              = var.tag4
}

