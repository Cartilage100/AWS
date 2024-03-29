terraform{
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
    backend "s3" {
      bucket = "terraform-montblanc-test-tfstate"
      key = "terraform.tfstate"
      region = "ap-northeast-1"
    }   
}

provider "aws" {
  region = "ap-northeast-1"
}
