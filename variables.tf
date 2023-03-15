variable "region" {}
variable "backend-bucket" {}
variable "backend-key" {}

variable "ami_id" {
  default     = "ami-08cd358d745620807"
  type        = string
  description = "this is ami id for the machine"
}
variable "instance_type" {}
variable "key_name" {}
variable "machine_name" {}
