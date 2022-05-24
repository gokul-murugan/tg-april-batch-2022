resource "aws_vpc" "tekglobal" {
  cidr_block = var.vpc_cidr
  tags       = var.vpc_tags
}


resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.tekglobal.id
  cidr_block              = var.public_sub_cidr
  map_public_ip_on_launch = true
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.tekglobal.id
  cidr_block = var.private_sub_cidr
}