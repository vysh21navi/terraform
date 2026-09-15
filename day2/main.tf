resource "aws_vpc" "vys" {
    cidr_block = var.vpc_cidr
    tags = {
        Name = "vys-vpc"
    }
  
}
resource "aws_subnet" "vys_subnet" {
    vpc_id = aws_vpc.vys.id
    cidr_block = var.public_subnet_cidr
    tags = {
        Name = "vys-subnet"
    }
}
resource "aws_internet_gateway" "vys_igw" {
    vpc_id = aws_vpc.vys.id
    tags = {
        Name = "vys-igw"
    }
}