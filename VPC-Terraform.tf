# Configure the AWS Provider
provider "aws" {
  region     = "ap-south-1"
}

resource "aws_vpc" "bala-demo-tf-vpc" {
  cidr_block       = "192.168.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "bala-demo-tf-vpc"
    Location = "Chennai"
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id     = "${aws_vpc.bala-demo-tf-vpc.id}"
  cidr_block = "192.168.1.0/24"

  tags = {
    Name = "Subnet1"
  }
}
