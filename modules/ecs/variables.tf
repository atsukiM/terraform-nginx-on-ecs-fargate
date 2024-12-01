variable "cluster_name" {
  description = "ECSのクラスタ名"
  type        = string
}

variable "family_name" {
  description = "ECSのタスク名"
  type        = string
}

variable "service_name" {
  description = "ECSのサービス名"
  type        = string
}

variable "subnet_map" {
  description = "サブネットのマップ"
  type        = map(string)
}

variable "security_group_id" {
  description = "セキュリティグループのID"
  type        = string
}

variable "ecs_execution_role_arn" {
  description = "ECSコンテナ用のIAMロールのARN"
  type        = string
}
