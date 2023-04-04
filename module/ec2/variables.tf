variable "instance_name" {}
variable "instance_type" {
  default = "t2.micro"
}
variable "ami" {
  default = "ami-08cd358d745620807"
}
variable "createdby" {
  default = "terraform"
}
variable "key_name" {}
