module "ecs" {
  source = "../../modules/ecs"

  cluster_name = var.ecs.cluster_name
  family_name  = var.ecs.service_name
  service_name = var.ecs.service_name

  subnet_map             = module.subnet.subnet_map
  security_group_id      = module.security_group.security_group_id
  ecs_execution_role_arn = module.iam.ecs_execution_role_arn
}
