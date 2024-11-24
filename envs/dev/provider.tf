provider "aws" {
  region  = "ap-northeast-1"
  profile = "default"
  
  default_tags {
    tags = {
      Environment = "dev"
      Name        = "Terraform Test"
    }
  }
}
