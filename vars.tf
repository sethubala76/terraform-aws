variable "region"{
  default = "ap-south-1"
}

variable "ec2-ami" {
type = "map"

default = {
  ap-south-1 = "ami-76d6f519"
  ap-south-2 = "ami-e251209a"
}
}

variable "instance_type" {
  default = "t2.micro"
}
