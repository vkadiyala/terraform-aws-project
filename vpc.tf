
resource "aws_vpc" "tf_vpc" {
  cidr_block = "${var.tf_vpc_cider_block}"

  tags = {
    Name = "tf_vpc"
  }
}
