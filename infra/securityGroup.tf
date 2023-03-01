resource "aws_security_group" "app_lb" {
  name        = "app_lb_ecs"
  description = "Allow inbound traffic for ECS Loud Balancer"
  vpc_id      = module.vpc.vpc_id
}

resource "aws_security_group_rule" "allow_tcp" {
  type              = "ingress"
  from_port         = 8000
  to_port           = 8000
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.app_lb.id
}

resource "aws_security_group_rule" "allow_tcp" {
  type              = "egress"
  from_port         = 0
  to_port           = 65535
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.app_lb.id
}