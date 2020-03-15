provider "aws" {
   region = "${var.aws_region}"
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "${var.vpc_cidr}"

  tags = {
    Name = "${var.vpc_name}"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = "${aws_vpc.my_vpc.id}"
  cidr_block        = "${var.subnet_cidr}"
  availability_zone = "${var.subnet_availability_zone}"

  tags = {
    Name = "${var.subnet_name}"
  }
}

