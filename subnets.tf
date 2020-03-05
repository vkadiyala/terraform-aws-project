
#public subnets 
resource "aws_subnet" "tf_public_subnet" {
  count                   = "${length(var.tf_subnet_cidr_block)}"
  vpc_id                  = "${aws_vpc.tf_vpc.id}"
  cidr_block              = "${element(var.tf_subnet_cidr_block, count.index)}"
  availability_zone       = "${element(var.tf_availability_zone, count.index)}"
  map_public_ip_on_launch = "true"
  tags = {
    Name = "tc_subnet-${count.index + 1}"
  }
}
