resource "aws_vpc" "rishi" {
  cidr_block = "10.0.0.0/16"
    tags = {
        Name = "rishi-vpc"
    }
}
resource "aws_subnet" "rishi" {
  vpc_id     = aws_vpc.rishi.id
  cidr_block = "10.0.1.0/24"
    tags = {
        Name = "rishi-subnet"
    }
}
resource "aws_instance" "rishi" {
  ami           = "ami-0e34b50e714a297f1"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.rishi.id
    tags = {
        Name = "rishi-instance"
    }
}
resource "aws_s3_bucket" "rishi" {
  bucket = "rishhhhhhhhhhhhhhhhhhhhhhi-bucket"
    tags = {
        Name = "rishi-bucket"
    }
}