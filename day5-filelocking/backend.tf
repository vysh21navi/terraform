terraform {
  backend "s3" {
    bucket = "rishhhhhi-aws-bucket"
    key    = "day5-filelocking/terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true 
  }
}