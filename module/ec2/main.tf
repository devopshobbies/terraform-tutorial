resource "aws_instance" "ec2" {
  ami = var.ami

  instance_type = var.instance_type
  key_name = var.key_name
  tags = {
    Created_By = var.createdby
    Name       = var.instance_name
  }
}