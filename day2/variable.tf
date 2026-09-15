variable "vpc_cidr" {
    description = "The CIDR block for the VPC"
    default     = "10.0.0.0/16"
}
variable "public_subnet_cidr" {
    description = "The CIDR block for the subnet"
    default     = "10.0.0.0/24"
}