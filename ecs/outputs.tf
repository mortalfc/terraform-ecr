output "ecr_arn" {
    value = aws_ecr_repository.mlforeveryone.arn
}

output "ecr_name" {
    value = aws_ecr_repository.mlforeveryone.name
}

output "ecr_registry_id" {
    value = aws_ecr_repository.mlforeveryone.registry_id
}

output "ecr_repository_url" {
    value = aws_ecr_repository.mlforeveryone.repository_url
}

output "ecs_cluster_id" {
    value = aws_ecs_cluster.mlforeveryone.id
}

output "ecs_cluster_arn" {
    value = aws_ecs_cluster.mlforeveryone.arn
}

output "ecs_task_definition_server_arn" {
    value = aws_ecs_task_definition.mlforeveryone_server.arn
}

output "ecs_task_definition_server_family" {
    value = aws_ecs_task_definition.mlforeveryone_server.family
}

output "ecs_task_definition_server_revision" {
    value = aws_ecs_task_definition.mlforeveryone_server.revision
}


output "ecs_task_definition_migrations_arn" {
    value = aws_ecs_task_definition.mlforeveryone_migrations.arn
}

output "ecs_task_definition_migrations_family" {
    value = aws_ecs_task_definition.mlforeveryone_migrations.family
}

output "ecs_task_definition_migrations_revision" {
    value = aws_ecs_task_definition.mlforeveryone_migrations.revision
}

output "service_server_id" {
    value = aws_ecs_service.service_server.id
}

output "service_server_name" {
    value = aws_ecs_service.service_server.name
}

output "service_server_cluster" {
    value = aws_ecs_service.service_server.cluster
}

output "service_server_iam_role" {
    value = aws_ecs_service.service_server.iam_role
}

output "service_server_desired_count" {
    value = aws_ecs_service.service_server.desired_count
}

output "service_migration_id" {
    value = aws_ecs_service.service_migration.id
}

output "service_migration_name" {
    value = aws_ecs_service.service_migration.name
}

output "service_migration_cluster" {
    value = aws_ecs_service.service_migration.cluster
}

output "service_migration_iam_role" {
    value = aws_ecs_service.service_migration.iam_role
}

output "service_migration_desired_count" {
    value = aws_ecs_service.service_migration.desired_count
}