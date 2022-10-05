#creating networking for project
resource "aws_vpc" "acp-vpc" {
  cidr_block           = var.cidr-for-acp-vpc
  instance_tenancy     = "default"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "acp-vpc"
  }
}




