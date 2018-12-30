resource "aws_instance" "web" {
  ami           = "${lookup(var.ec2-ami,var.region)}"
  instance_type = "${var.instance_type}"

  tags = {
    Name = "HelloWorld"
  }
}
