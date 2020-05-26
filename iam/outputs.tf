output "role_arn" {
    value = aws_iam_role.ec2_to_ecs.arn
}

output "role_name" {
    value = aws_iam_role.ec2_to_ecs.name
}

output "ecs_full_access_policy_arn" {
    value = data.aws_iam_policy.ecs_full_access_policy.arn
}

output "instance_profile_arn" {
    value = aws_iam_instance_profile.instance_profile_for_ec2_to_ecs.arn
}