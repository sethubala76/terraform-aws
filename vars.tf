variable "region" {
  default = "us-west-2"

}

variable "vpc-cidr" {
  default = "192.168.0.0/16"
}

variable "subnet-cidr" {
  type = "list"
  default = ["192.168.1.0/24","192.168.2.0/24","192.168.3.0/24"]
}

#variable "azs" {
#  type = "list"
#  default = ["us-west-2a","us-west-2b","us-west-2c"]
#}

# Declare the data source
data "aws_availability_zones" "azs" {}
