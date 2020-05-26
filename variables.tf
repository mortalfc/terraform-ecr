variable "region" {
  description = "AWS region_id, e.g. us-east-1"
}

variable "lc_ami_id" {
    description = "AMI ID for lauch configuration"
}

variable "lc_sg_id" {
  description = "Security Group Id for lauch configuration"
  default = ""
}

variable "as_subnet_id" {
  description = "Subnet id to launch"
  default = ""
}

variable "vpc_name" {
  description = "VPC name"
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

variable "iam_role_name" {
    description = "Iam role name to connect EC2 and ECS"
}
