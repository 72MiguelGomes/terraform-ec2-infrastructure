resource "aws_vpc" "vpc" {
  cidr_block = "${local.vpc_cidr["${var.environment}"]}"

  tags {
    Name = "${var.environment} VPC"
    Terraform = "true"
  }
}

locals {
  vpc_cidr = {
    Dev = "10.0.0.0/24",
    Qa = "10.0.1.0/24",
    Prod = "10.0.2.0/24"
  }
}