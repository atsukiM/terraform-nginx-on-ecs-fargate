resource "aws_ecs_cluster" "main" {
  name = var.cluster_name
}

resource "aws_ecs_task_definition" "main" {
  family = var.family_name
  cpu    = 512
  memory = 1024
  container_definitions = jsonencode([
    {
      name      = "nginx"
      image     = "nginx:latest"
      cpu       = 256
      memory    = 512
      essential = true
      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
        }
      ]
    }
  ])
  network_mode             = "awsvpc"
  execution_role_arn       = var.ecs_execution_role_arn
  requires_compatibilities = ["FARGATE"]
}

resource "aws_ecs_service" "main" {
  name            = var.service_name
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.main.arn
  launch_type     = "FARGATE"
  desired_count   = 2

  network_configuration {
    subnets = [
      var.subnet_map[1],
      var.subnet_map[2]
    ]
    security_groups  = [var.security_group_id]
    assign_public_ip = true
  }
}
