

resource "aws_instance" "babak" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  count         = length(var.env_name)
  tags = {
    Name       = "babak-${var.env_name[count.index]}"
    Created_By = local.created_by
  }
}
# resource "aws_instance" "babak2" {
#   ami = "ami-08cd358d745620807"

#   instance_type = "t2.micro"

#   tags = {
#     Created_By = "terraform"
#     Name       = "Airflow"
#   }
# }


# module "ec2_babak" {
#   source = "./module/ec2"

#   instance_name = "v011"
#   key_name      = "dvh"
# }


# module "ec2_babak2" {
#   source = "./module/ec2"

#   instance_name = "v011_2"
#   key_name      = "dvh"
# }




# terraform import aws_instance.babak3 i-01836e088c5f7f783
# resource "aws_instance" "babak3" {
#   ami = "ami-086b3de06dafe36c5"
#   key_name      = var.key_name
#   instance_type = "t2.micro"
#    tags = {
#         Name       = "babak2"
#   }

# }
