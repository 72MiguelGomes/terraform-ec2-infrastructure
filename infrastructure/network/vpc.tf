resource "aws_vpc" "vpc" {
  #TODO: This should be configurable
  cidr_block = "10.0.0.0/16"

  tags {
    Name = "${var.environment} VPC"
    Terraform = "true"
  }
}