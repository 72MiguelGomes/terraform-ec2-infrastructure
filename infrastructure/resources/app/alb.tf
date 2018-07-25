resource "aws_lb" "aws_lb" {
  name            = "${var.app_name}"
  internal        = false
  security_groups = "${module.vars.LB_SG}"
  subnets         = "${module.vars.PUBLIC_SUBNETS}"
}

resource "aws_lb_listener" "listener_http" {
  load_balancer_arn = "${aws_lb.aws_lb.arn}"
  port              = "80"
  protocol          = "HTTP"

  default_action {
    target_group_arn = "${aws_lb_target_group.aws_lb_tg.arn}"
    type             = "forward"
  }
}

resource "aws_lb_target_group" "aws_lb_tg" {
  name                 = "${var.app_name}-lbtg"
  port                 = "8080"
  protocol             = "HTTP"
  vpc_id               = "${module.vars.VPC_ID}"
  deregistration_delay = 20
}
