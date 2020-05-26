resource "aws_ecs_task_definition" "mlforeveryone_server" {
  family                = var.task_definition_server_name
  container_definitions = file("${path.module}/task_definitions/server.json")
  cpu = var.task_definition_server_cpu
  memory = var.task_definition_server_memory
}

resource "aws_ecs_task_definition" "mlforeveryone_migrations" {
  family                = var.task_definition_migration_name
  container_definitions = file("${path.module}/task_definitions/migrations.json")
  cpu = var.task_definition_migration_cpu
  memory = var.task_definition_migration_memory
}