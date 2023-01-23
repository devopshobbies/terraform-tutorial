terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
   access_key = "AKIA3OMONEGXTT3SUBXA"
   secret_key = "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"
}
