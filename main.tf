provider "aws" {
  profile = "default"
  region  = var.region
}

module "ml_vpc" {
  source = "./vpc"

  region = var.region
  vpc_name = var.vpc_name
}

module "ml_iam" {
  source = "./iam"

  region = var.region
  role_name = var.iam_role_name
}

module "ml_ecs" {
  source = "./ecs"

  region = var.region
  vpc_name = var.vpc_name
  ecs_name = var.ecs_name
  ecr_name = var.ecr_name
  service_migration_name = var.service_migration_name
  service_server_name = var.service_server_name
  task_definition_migration_cpu = var.task_definition_migration_cpu
  task_definition_server_name = var.task_definition_server_name
  task_definition_migration_memory = var.task_definition_migration_memory
  task_definition_migration_name = var.task_definition_migration_name
  task_definition_server_memory= var.task_definition_server_memory
  task_definition_server_cpu = var.task_definition_server_cpu
}

module "ml_autoscaling" {
  source = "./autoscaling"

  region = var.region
  as_subnet_id = module.ml_vpc.public_subnet_id
  lc_sg_id = module.ml_vpc.tls_security_group_id
  lc_ami_id = var.lc_ami_id
  iam_instance_profile = module.ml_iam.instance_profile_arn
}