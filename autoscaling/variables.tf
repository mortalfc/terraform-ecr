variable "region" {
  description = "AWS region_id, e.g. us-east-1"
}

variable "lc_ami_id" {
    description = "AMI ID for lauch configuration"
}

variable "lc_sg_id" {
  description = "Security Group Id for lauch configuration"
}

variable "as_subnet_id" {
  description = "Subnet id to launch"
}

variable "iam_instance_profile" {
  description = "IAM role for ECS"
}