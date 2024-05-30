terraform {
  backend "s3" {
    bucket = "alb-state-host"
    key    = "terraform-state/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "state-lock-alb"
  }
}