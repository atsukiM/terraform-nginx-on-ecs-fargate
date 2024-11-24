variable "subnet" {
  description = "1aと1cのサブネット"
  type        = map(map(string))
}

variable "vpc_id" {
  description = "VPCのID"
  type        = string
}
