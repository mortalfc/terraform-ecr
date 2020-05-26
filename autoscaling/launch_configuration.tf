resource "aws_launch_configuration" "lc_ml" {
  name          = "ML for everyone"
  image_id      = var.lc_ami_id
  instance_type = "t2.micro"
  key_name = "vpc_test"
  security_groups = [var.lc_sg_id]
  user_data = filebase64("${path.module}/start_in_cluster.sh")
  iam_instance_profile = var.iam_instance_profile
}