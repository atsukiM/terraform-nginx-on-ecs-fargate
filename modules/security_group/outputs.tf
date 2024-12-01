output "security_group_id" {
  description = "ECS用のセキュリティグループ"
  value       = aws_security_group.allow_all_traffic.id
}
