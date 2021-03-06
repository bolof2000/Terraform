provider "aws" {
  region = var.region
}
resource "aws_vpc" "module-vpc" {
  cidr_block = var.aws-vpc
  enable_dns_hostnames = true

  tags = {
    Name ="Production-VPC"
  }
}
resource "aws_subnet" "module_public_subnet_1" {
  cidr_block = var.public_subnet_1_cidr
  vpc_id = aws_vpc.module-vpc.id
  availability_zone = "${var.region}a"
  tags = {
    Name ="Public-Subnet-1"
  }
}

resource "aws_subnet" "module_public_subnet_2" {
  cidr_block = var.public_subnet_2_cidr
  vpc_id = aws_vpc.module-vpc.id
  availability_zone = "${var.region}b"

  tags = {
    Name ="Public-Subnet-2"
  }
}
resource "aws_subnet" "module_public_subnet_3" {
  cidr_block = var.public_subnet_3_cidr
  vpc_id = aws_vpc.module-vpc.id
  availability_zone = "${var.region}c"
  tags = {
    Name ="Public-Subnet-3"
  }
}

resource "aws_subnet" "module_private_subnet_1" {
  cidr_block = var.private_subnet_1_cidr
  vpc_id = aws_vpc.module-vpc.id
  availability_zone = "${var.region}a"
  tags = {
    Name ="private-Subnet-1"
  }
}

resource "aws_subnet" "module_private_subnet_2" {
  cidr_block = var.private_subnet_2_cidr
  vpc_id = aws_vpc.module-vpc.id
  availability_zone = "${var.region}a"
  tags = {
    Name ="private-Subnet-2"
  }
}

resource "aws_subnet" "module_private_subnet_3" {
  cidr_block = var.private_subnet_3_cidr
  vpc_id = aws_vpc.module-vpc.id
  availability_zone = "${var.region}a"
  tags = {
    Name ="private-Subnet-3"
  }
}

