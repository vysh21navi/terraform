resource "aws_vpc" "naga_vpc" {
    cidr_block = var.vpc_cidr
    tags = {
        Name = "naga_vpc"
    }   
}
resource "aws_subnet" "naga_subnet" {
    vpc_id     = aws_vpc.naga_vpc.id
    cidr_block = var.public_subnet_cidr
    tags = {
        Name = "naga_subnet"
    }
}
resource "aws_instance" "naaaaga_instance" {
    ami           = "ami-0bd3fbcdc633a1b1a"
    instance_type = var.instance_type
    subnet_id     = aws_subnet.naga_subnet.id

    tags = {
        Name = "naaaaga_instance"
    }
}
