region   = "us-east-1"
lc_ami_id = "ami-0aee8ced190c05726"
vpc_name = "mlforeveryon-vpc"

ecr_name = "mlforeveryone"
ecs_name = "mlforeveryone"
task_definition_server_name = "mlforeveryone_server"
task_definition_server_cpu = 128
task_definition_server_memory = 312
task_definition_migration_name = "mlforeveryone_run_migrations"
task_definition_migration_cpu = 128
task_definition_migration_memory = 312
service_server_name = "mlforeveryone_server"
service_migration_name = "mlforeveryone_migration"
iam_role_name = "EC2forECS"
