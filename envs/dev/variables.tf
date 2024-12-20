variable "vpc" {
  type = map(string)
  default = {
    cidr_block = "10.0.0.0/24"
  }
}

variable "subnet" {
  type = map(map(string))
  default = {
    "1" = {
      az   = "ap-northeast-1a"
      cidr = "10.0.0.0/27"
    }
    "2" = {
      az   = "ap-northeast-1c"
      cidr = "10.0.0.32/27"
    }
  }
}

variable "ecs" {
  description = "ECSのパラメータ"
  type        = map(any)
  default = {
    cluster_name = "nginx-on-fargate"
    family_name  = "nginx-on-fargate"
    service_name = "nginx-on-fargate"
  }
}
