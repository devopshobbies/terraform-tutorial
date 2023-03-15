terraform {
 backend "s3" {
    bucket = "dvh-terraform-tutorial"
    key    = "build/airflow/terraform.tfstate"
    region = "eu-west-2"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
# Configure the AWS Provider
provider "aws" {
  region = var.region
}