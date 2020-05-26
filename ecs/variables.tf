variable "region" {
    description = "AWS region_id, e.g. us-east-1"
}

variable "ecr_name" {
    description = "Name of ecr repository"
}

variable "ecs_name" {
    description = "Name of ecs cluster"
}

variable "task_definition_server_name" {
    description = "Name of task for running server"
}

variable "task_definition_server_cpu" {
    description = "Cpu size to run server"
}

variable "task_definition_server_memory" {
    description = "Memory size to run server"
}

variable "task_definition_migration_name" {
    description = "Name of task for running migrations"
}

variable "task_definition_migration_cpu" {
    description = "Cpu size to run migrations"
}

variable "task_definition_migration_memory" {
    description = "Memory size to run migrations"
}

variable "service_server_name" {
    description = "Name of service for running server"
}

variable "service_migration_name" {
    description = "Name of service for running server"
}

variable "vpc_name" {
    description = "Name of VPC"
}