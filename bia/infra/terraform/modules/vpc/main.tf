resource "aws_vpc" "this" {
  cidr_block = "10.0.0.0/16"
  tags = merge(var.tags, {
    Name = "dev-vpc"
  })
}

resource "aws_subnet" "public" {
  for_each                = toset(var.public_subnet_cidrs)
  vpc_id                  = aws_vpc.this.id
  cidr_block              = each.key
  map_public_ip_on_launch = true

  tags = merge(var.tags, {
    Name = "dev-public-${each.key}"
  })
}

resource "aws_subnet" "private" {
  for_each   = toset(var.private_subnet_cidrs)
  vpc_id     = aws_vpc.this.id
  cidr_block = each.key

  tags = merge(var.tags, {
    Name = "dev-private-${each.key}"
  })
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.this.id
  tags   = merge(var.tags, { Name = "dev-igw" })
}

output "vpc_id" {
  value = aws_vpc.this.id
}

output "public_subnets" {
  value = values(aws_subnet.public)[*].id
}

output "private_subnets" {
  value = values(aws_subnet.private)[*].id
}

