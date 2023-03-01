resource "aws_security_group" "app_lb" {
  name        = "app_lb_ecs"
  description = "Allow inbound traffic for ECS Loud Balancer"
  vpc_id      = module.vpc.vpc_id
}

resource "aws_security_group_rule" "inbound_lb" {
  type              = "ingress"
  from_port         = 8000
  to_port           = 8000
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.app_lb.id
}

resource "aws_security_group_rule" "outbound_lb" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.app_lb.id
}

resource "aws_security_group" "private_group" {
  name        = "private_ecs"
  description = "Allow private traffic for ECS Loud Balancer"
  vpc_id      = module.vpc.vpc_id
}

resource "aws_security_group_rule" "inbound_private_traffic" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  source_security_group_id = aws_security_group.app_lb.id
  security_group_id = aws_security_group.private_group.id
}

resource "aws_security_group_rule" "outbound_private_traffic" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  source_security_group_id = aws_security_group.app_lb.id
  security_group_id = aws_security_group.private_group.id
  }