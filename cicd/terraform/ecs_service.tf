resource "aws_ecs_service" "seventeen" {
  name = var.project_name # Should be the name of the service
  launch_type = "FARGATE"
  task_definition = "seventeen-task-definition"
  cluster = var.aws_ecs_cluster_name
  network_configuration {
    subnets = ["subnet-0c74a32f65cdd2b48", "subnet-077a613915e0e3b02"]
    security_groups = ["sg-076e450d6b2cafad9"]
    assign_public_ip = true
  }
  desired_count = 1
}
