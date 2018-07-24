# Private Subnet (does not have any access to internet)
resource "aws_subnet" "private_a" {
  vpc_id            = "${aws_vpc.vpc.id}"
  cidr_block        = "10.0.1.0/24"
  availability_zone = "${data.aws_region.current.name}a"

  tags {
    Name      = "${var.environment} Private Subnet A"
    Terraform = "true"
  }
}

resource "aws_subnet" "private_b" {
  vpc_id            = "${aws_vpc.vpc.id}"
  cidr_block        = "10.0.2.0/24"
  availability_zone = "${data.aws_region.current.name}b"

  tags {
    Name      = "${var.environment} Private Subnet B"
    Terraform = "true"
  }
}

resource "aws_subnet" "private_c" {
  vpc_id            = "${aws_vpc.vpc.id}"
  cidr_block        = "10.0.3.0/24"
  availability_zone = "${data.aws_region.current.name}c"

  tags {
    Name      = "${var.environment} Private Subnet C"
    Terraform = "true"
  }
}

# DMZ Subnet (Have access to internet using a nat)
resource "aws_subnet" "dmz_a" {
  vpc_id            = "${aws_vpc.vpc.id}"
  cidr_block        = "10.0.4.0/24"
  availability_zone = "${data.aws_region.current.name}a"

  tags {
    Name      = "${var.environment} DMZ Subnet A"
    Terraform = "true"
  }
}

resource "aws_subnet" "dmz_b" {
  vpc_id            = "${aws_vpc.vpc.id}"
  cidr_block        = "10.0.5.0/24"
  availability_zone = "${data.aws_region.current.name}b"

  tags {
    Name      = "${var.environment} DMZ Subnet B"
    Terraform = "true"
  }
}

resource "aws_subnet" "dmz_c" {
  vpc_id            = "${aws_vpc.vpc.id}"
  cidr_block        = "10.0.6.0/24"
  availability_zone = "${data.aws_region.current.name}c"

  tags {
    Name      = "${var.environment} DMZ Subnet C"
    Terraform = "true"
  }
}

# Public Subnet (Have direct acess to the internet, ALBs)
resource "aws_subnet" "public_a" {
  vpc_id            = "${aws_vpc.vpc.id}"
  cidr_block        = "10.0.7.0/24"
  availability_zone = "${data.aws_region.current.name}a"

  tags {
    Name      = "${var.environment} Public Subnet A"
    Terraform = "true"
  }
}

resource "aws_subnet" "public_b" {
  vpc_id            = "${aws_vpc.vpc.id}"
  cidr_block        = "10.0.8.0/24"
  availability_zone = "${data.aws_region.current.name}b"

  tags {
    Name      = "${var.environment} Public Subnet B"
    Terraform = "true"
  }
}

resource "aws_subnet" "public_c" {
  vpc_id            = "${aws_vpc.vpc.id}"
  cidr_block        = "10.0.9.0/24"
  availability_zone = "${data.aws_region.current.name}c"

  tags {
    Name      = "${var.environment} Public Subnet C"
    Terraform = "true"
  }
}
