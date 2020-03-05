
/*
resource "aws_instance" "webservers" {
  count           = "${length(var.tf_subnet_cidr_block)}"
  ami             = "${var.webservers_ami}"
  instance_type   = "${var.aws_inatance_type}"
  subnet_id       = "${element(aws_subnet.tf_public_subnet.*.id, count.index)}"
  security_groups = ["${aws_security_group.tf_security_gp.id}"]
  user_data       = "${file("install_httpd.sh")}"


  tags = {
    Name = "Server-${count.index}"
  }
}

*/