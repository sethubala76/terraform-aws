# Configure the AWS Provider
provider "aws" {
  region     = "${var.region}"
}

resource "aws_vpc" "bala-demo-tf-vpc" {
  cidr_block       = "${var.vpc-cidr}"
  instance_tenancy = "default"

  tags = {
    Name = "bala-demo-tf-vpc"
    Location = "Chennai"
  }
}

resource "aws_subnet" "subnets" {
  count = "${length(data.aws_availability_zones.azs.names)}"
  availability_zone = "${element(data.aws_availability_zones.azs.names,count.index)}"
  vpc_id     = "${aws_vpc.bala-demo-tf-vpc.id}"
  cidr_block = "${element(var.subnet-cidr,count.index)}"

  tags = {
    Name = "Subnet-${count.index+1}"
  }
}
