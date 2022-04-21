resource "aws_ecs_service" "seventeen" {
  name = var.project_name # Should be the name of the service
  launch_type = "FARGATE"
  task_definition = "seventeen-task-definition"
  cluster = var.aws_ecs_cluster_name
  network_configuration {
    subnets = [aws_subnet.seventeen_pub_us-east-1-a, aws_subnet.seventeen_pub_us-east-1-b.id]
    security_groups = []
    assign_public_ip = true
  }
  desired_count = 1
}
