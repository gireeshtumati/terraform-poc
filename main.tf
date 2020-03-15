provider "aws" {}

resource "aws_vpc" "my_vpc" {
  cidr_block = "172.22.0.0/16"

  tags = {
    Name = "tf-gireesh"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = "${aws_vpc.my_vpc.id}"
  cidr_block        = "172.22.10.0/24"
  availability_zone = "us-west-2a"

  tags = {
    Name = "tf-gireesh"
  }
}
