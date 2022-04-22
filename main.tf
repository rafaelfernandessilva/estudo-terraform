terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

#configure aws providers

provider "aws" {
  region = "us-east-1"
}

/*
terraform {
  backend "s3" {
    bucket = "terraform-tfstates-therafs"
    key    = "terraform-test.tfstate"
    region = "us-east-1"
  }
}*/