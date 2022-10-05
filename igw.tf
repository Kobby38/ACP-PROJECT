# internet gateway

resource "aws_internet_gateway" "acp-igw" {
  vpc_id = aws_vpc.acp-vpc.id

  tags = var.acp-igw
}

# aws route
resource "aws_route" "acp-igw-association" {
  route_table_id         = aws_route_table.acp-pub-route-table.id
  gateway_id             = aws_internet_gateway.acp-igw.id
  destination_cidr_block = var.internet-gateway-association
}