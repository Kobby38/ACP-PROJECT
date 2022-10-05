# route table
resource "aws_route_table" "acp-pub-route-table" {
  vpc_id = aws_vpc.acp-vpc.id
  tags   = var.tag5

}

resource "aws_route_table" "acp-priv-route-table" {
  vpc_id = aws_vpc.acp-vpc.id
  tags   = var.tag6
}

# route association public
resource "aws_route_table_association" "public-route-table-association-1" {
  subnet_id      = aws_subnet.acp-public-sub1.id
  route_table_id = aws_route_table.acp-pub-route-table.id
}

resource "aws_route_table_association" "public-route-table-association-2" {
  subnet_id      = aws_subnet.acp-public-sub2.id
  route_table_id = aws_route_table.acp-pub-route-table.id
}

# route association private
resource "aws_route_table_association" "private-route-table-association-1" {
  subnet_id      = aws_subnet.acp-private-sub1.id
  route_table_id = aws_route_table.acp-priv-route-table.id
}

resource "aws_route_table_association" "private-route-table-association-2" {
  subnet_id      = aws_subnet.acp-db-subnet.id
  route_table_id = aws_route_table.acp-priv-route-table.id
}

