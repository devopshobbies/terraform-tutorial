# variable "ami_id" { default = "ami-08cd358d745620807" }
# # variable "ami_id" {}
# variable "instance_type" {
#   default = "t2.micro"
# }
# variable "key_name" { default = "dvh" }
# variable "machine_name" { default = "babak" }

variable "ami_id" {
  # default = "ami-08cd358d745620807"
  type        = string
  description = "this is ami id for the machine"
}
variable "instance_type" {}
variable "key_name" {}
variable "machine_name" {}