resource "aws_autoscaling_group" "as_ml" {
  name                      = "autoscaling-for-ml"
  max_size                  = 1
  min_size                  = 1

  launch_configuration      = aws_launch_configuration.lc_ml.name
  vpc_zone_identifier       = [var.as_subnet_id]
}