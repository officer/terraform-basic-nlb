resource "aws_lb" "nlb" {
  name_prefix                       = "${var.namespace}-"
  internal                          = "${var.internal}"
  load_balancer_type                = "network"
  subnets                           = "${var.subnets}"
  idle_timeout                      = "${var.idle_timeout}"
  enable_cross_zone_load_balancing  = "${var.enable_cross_zone_load_balancing}"
}


resource "aws_lb_listener" "default" {
  load_balancer_arn = "${aws_lb.nlb.arn}"
  port              = "${var.listner_port}"
  protocol          = "TCP"

  default_action {
    type              = "forward"
    target_group_arn  = "${var.target_group_arn}"
  }

  
}