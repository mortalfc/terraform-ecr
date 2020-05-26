resource "aws_ecs_service" "service_server" {
  name            = var.service_server_name
  cluster         = aws_ecs_cluster.mlforeveryone.id
  task_definition = aws_ecs_task_definition.mlforeveryone_server.arn
  desired_count   = 1
}

resource "aws_ecs_service" "service_migration" {
  name            = var.service_migration_name
  cluster         = aws_ecs_cluster.mlforeveryone.id
  task_definition = aws_ecs_task_definition.mlforeveryone_migrations.arn
  desired_count   = 1
}