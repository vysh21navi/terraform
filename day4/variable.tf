variable "vpc_cidr" {
    description = "The CIDR block for the VPC"
    default     = ""
}
variable "public_subnet_cidr" {
    description = "The CIDR block for the subnet"
    default     = ""
}
variable "private_subnet_cidr"{
    description = "The CIDR block for the subnet"
    default     = ""
}
variable "ami_id"{
    description = "The AMI ID for the instance"
    default     = ""
}
variable "instance_type"{
    description = "The instance type for the instance"
    default     = "t2.micro"
}
variable "bucket_name"{
    description = "The name of the S3 bucket"
    default     = ""
}