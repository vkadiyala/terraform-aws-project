/*
# Create a new load balancer
resource "aws_elb" "tf-elb" {
  name               = "tf-elb"
  subnets            = "${aws_subnet.tf_public_subnet.*.id}"
  security_groups    = ["${aws_security_group.tf_security_gp.id}"]
  #availability_zones = "${var.tf_availability_zone}"

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:80/index.html"
    interval            = 10
  }

  instances                   = "${aws_instance.webservers.*.id}"
  cross_zone_load_balancing   = true
  idle_timeout                = 100
  connection_draining         = true
  connection_draining_timeout = 300

  tags = {
    Name = "tf-terraform-elb"
  }
}

output "elb_dns" {
  value = "${aws_elb.tf-elb.dns_name}"
}

*/