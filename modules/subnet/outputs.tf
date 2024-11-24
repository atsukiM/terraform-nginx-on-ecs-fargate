output "subnet_map" {
    description = "サブネットのマップ"
    value = {for k, subnet in aws_subnet.public : k => subnet.id}
}
