terraform {
  required_version = ">= 0.11.0"
  backend "s3" {

    bucket = "nakadats-terraform-state"
    region = "ap-northeast-1"
    key     = "terraform.tfstate"
    encrypt = true
    
  }
}