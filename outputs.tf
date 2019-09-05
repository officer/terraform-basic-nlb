output "nlb" {
  value = "${aws_lb.nlb}"
}

output "listener" {
  value = "${aws_lb_listener.default}"
}

