

resource "aws_internet_gateway" "tf_igateway" {
  vpc_id = "${aws_vpc.tf_vpc.id}"

  tags = {
    Name = "tf_inter_gateway"
  }

}