terraform {
  backend "s3" {
    bucket = "terraform-dev-atsukim"
    key    = "terraform-nginx-on-ecs-fargate"
    region = "ap-northeast-1"
  }
}
