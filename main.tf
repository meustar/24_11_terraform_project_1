terraform {
  // 자바의 import 와 비슷함
  // aws 라이브러리 불러옴
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-northeast-2"
}

// aws_vpc = new aws_vpc(); 와 같은 의미.
// aws_vpc example = aws_vpc new aws_vpc(10.0.0.0/16); 와 같은 의미.
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"  // 생성자.

  tags = {
    Name = "example-1"
  }
}
