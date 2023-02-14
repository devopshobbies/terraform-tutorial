resource "aws_instance" "babak" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name       = var.machine_name
    Created_By = "terraform"
  }
}
# resource "aws_instance" "babak2" {
#   ami = "ami-08cd358d745620807"

#   instance_type = "t2.micro"

#   tags = {
#     Created_By = "terraform"
#   }
# }