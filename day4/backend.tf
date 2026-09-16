terraform {
  backend "s3" {
    bucket = "vyyyyyyyyyyyyyyyyyyyyyyyybucket"
    key    = "day4/terraform.tfstate"
    region = "us-east-1"
  }
}