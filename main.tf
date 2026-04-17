# -------------------------------
# Configure AWS Provider
# -------------------------------

provider "aws" {
  region = "us-east-1"
}

# -------------------------------
# Create VPC
# -------------------------------

resource "aws_vpc" "main" {
  cidr_block           = "10.1.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name        = "terraform-ci-cd-vpc"
    Environment = "dev"
    Project     = "terraform-ci-cd-pipeline"
  }
}