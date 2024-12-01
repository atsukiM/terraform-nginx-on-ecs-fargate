variable "vpc_id" {
  description = "VPCのID"
  type        = string
}

variable "subnet_map" {
  description = "サブネットのマップ"
  type        = map(string)
}

variable "gateway_id" {
  description = "インターネットゲートウェイのID"
  type        = string
}
