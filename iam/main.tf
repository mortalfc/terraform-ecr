provider "aws" {
  profile = "default"
  region  = var.region
}

resource "aws_iam_role" "ec2_to_ecs" {
  name = var.role_name

  assume_role_policy = file("${path.module}/role.json")
}


data "aws_iam_policy" "ecs_full_access_policy" {
  arn = "arn:aws:iam::aws:policy/AmazonECS_FullAccess"
}

resource "aws_iam_role_policy_attachment" "attach_ec2_to_ecs" {
  role      = aws_iam_role.ec2_to_ecs.name
  policy_arn = data.aws_iam_policy.ecs_full_access_policy.arn
}

resource "aws_iam_instance_profile" "instance_profile_for_ec2_to_ecs" {
  name = "instance_profile_for_ec2_to_ecs"
  role = aws_iam_role.ec2_to_ecs.name
}