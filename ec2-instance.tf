resource "aws_instance" "web" {
  #lookup(map, key, [default]) 
  ami           = "${lookup(var.ec2-ami,var.region)}"
  instance_type = "${var.instance_type}"

  tags = {
    Name = "HelloWorld"
  }
}
