terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.56.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region     = "us-east-1"
  access_key = var.sbcusdbcsdb
  secret_key = var.secret
}

terraform {
  backend "s3" {
    bucket = "ddgdgdrgdf"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}



