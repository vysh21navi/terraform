resource "aws_vpc" "vyshnavi_vpc" {
    cidr_block = var.vpc_cidr
    tags = {
        Name = "vyshnavi_vpc"
    }   
}
resource "aws_subnet" "vyshnavi_pub_subnet" {
    vpc_id     = aws_vpc.vyshnavi_vpc.id
    cidr_block = var.public_subnet_cidr
    tags = {
        Name = "vyshnavi_pub_subnet"
    }
}
resource "aws_subnet" "vyshnavi_priv_subnet" {
    vpc_id     = aws_vpc.vyshnavi_vpc.id
    cidr_block = var.private_subnet_cidr
    tags = {
        Name = "vyshnavi_priv_subnet"
    }
}
resource "aws_instance" "vyshnavi_pub_instance" {
    ami           = var.ami_id
    instance_type = var.instance_type
    subnet_id     = aws_subnet.vyshnavi_pub_subnet.id

    tags = {
        Name = "vyshnavi_pub_instance"
    }
}
resource "aws_s3_bucket" "vyyyyyy_s3_bucket" {
    bucket = var.bucket_name
    tags = {
        Name = "vyyyyyy_s3_bucket"
    }
}