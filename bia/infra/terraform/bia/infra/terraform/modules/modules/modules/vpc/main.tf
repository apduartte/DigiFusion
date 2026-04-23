# VPC Principal
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = merge(var.tags, {
    Name = "${var.environment}-vpc"
  })
}

# Subnets Públicas
resource "aws_subnet" "public" {
  count = length(var.public_subnet_cidrs)

  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet_cidrs[count.index]
  map_public_ip_on_launch = true

  tags = merge(var.tags, {
    Name = "${var.environment}-public-${count.index}"
  })
}

# Subnets Privadas
resource "aws_subnet" "private" {
  count = length(var.private_subnet_cidrs)

  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet_cidrs[count.index]

  tags = merge(var.tags, {
    Name = "${var.environment}-private-${count.index}"
  })
}

# Internet Gateway
resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = merge(var.tags, {
    Name = "${var.environment}-igw"
  })
}

# Route Table para Subnets Públicas
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }

  tags = merge(var.tags, {
    Name = "${var.environment}-public-rt"
  })
}

# Associação das Subnets Públicas com Route Table
resource "aws_route_table_association" "public" {
  count = length(aws_subnet.public)

  subnet_id      = aws_subnet.public[count.index].id
  route_table_id = aws_route_table.public.id
}
