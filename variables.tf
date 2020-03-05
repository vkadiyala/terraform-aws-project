
variable "aws_region" {
  default = "us-east-2"
}

variable "tf_vpc_cider_block" {
  default = "10.20.0.0/16"
}

variable "tf_subnet_cidr_block" {
  type    = "list"
  default = ["10.20.1.0/24", "10.20.2.0/24"]
}

variable "tf_availability_zone" {
  type    = "list"
  default = ["us-east-2a", "us-east-2b"]
}

variable "webservers_ami" {
  default = "ami-0e38b48473ea57778"
}

variable "aws_inatance_type" {
  default = "t2.micro"
}


