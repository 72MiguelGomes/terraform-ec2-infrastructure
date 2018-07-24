# Private Subnet (does not have any access to internet)
resource "aws_subnet" "private_a" {
  vpc_id     = "${aws_vpc.vpc.id}"
  cidr_block = "10.0.1.0/24"
  availability_zone = "${data.aws_region.current.name}a"

  tags {
    Name = "${var.environment} Private Subnet A"
  }
}

resource "aws_subnet" "private_b" {
  vpc_id     = "${aws_vpc.vpc.id}"
  cidr_block = "10.0.2.0/24"
  availability_zone = "${data.aws_region.current.name}b"

  tags {
    Name = "${var.environment} Private Subnet B"
  }
}

resource "aws_subnet" "private_c" {
  vpc_id     = "${aws_vpc.vpc.id}"
  cidr_block = "10.0.3.0/24"
  availability_zone = "${data.aws_region.current.name}c"

  tags {
    Name = "${var.environment} Private Subnet C"
  }
}
# DMZ Subnet (Have access to internet using a nat)

# Public Subnet (Have direct acess to the internet, ALBs)