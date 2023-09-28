resource "aws_vpc" "main" {
    cidr_block = "10.0.0.0/16"

    tags = local.tags
}

resource "aws_subnet" "main_1a" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-northeast-1a"

  tags = local.tags
}

resource "aws_internet_gateway" "main_gw" {
  vpc_id = aws_vpc.main.id
  # サブネットidここで指定できないらしい
  # subnet_id = aws_subnet.main_1a.id

  tags = local.tags
}

resource "aws_route_table" "name" {
  vpc_id = aws_vpc.main.id

  # route = {
  #   cidr_block  = "0.0.0.0/0"
  #   gateway_id = aws_internet_gateway.main_gw.id
  # }

  tags = local.tags
}
