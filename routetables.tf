resource "aws_route_table" "tf_route_table" {
  vpc_id = "${aws_vpc.tf_vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.tf_igateway.id}"
  }


  tags = {
    Name = "tf_public_route_table"
  }
}

resource "aws_route_table_association" "tf_rt_association" {
  count          = "${length(var.tf_subnet_cidr_block)}"
  subnet_id      = "${element(aws_subnet.tf_public_subnet.*.id, count.index)}"
  route_table_id = "${aws_route_table.tf_route_table.id}"
}