# DMZ Route Table
resource "aws_route_table" "dmz_rt" {
  vpc_id = "${aws_vpc.vpc.id}"

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.nat_gw.id}"
  }

  tags {
    Name = "DMZ Route Table"
  }
}

resource "aws_route_table_association" "dmz_a_rt_association" {
  subnet_id      = "${aws_subnet.dmz_a.id}"
  route_table_id = "${aws_route_table.dmz_rt.id}"
}

resource "aws_route_table_association" "dmz_b_rt_association" {
  subnet_id      = "${aws_subnet.dmz_b.id}"
  route_table_id = "${aws_route_table.dmz_rt.id}"
}

resource "aws_route_table_association" "dmz_c_rt_association" {
  subnet_id      = "${aws_subnet.dmz_c.id}"
  route_table_id = "${aws_route_table.dmz_rt.id}"
}

# Public Route Table
resource "aws_route_table" "public_rt" {
  vpc_id = "${aws_vpc.vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.internet_gw.id}"
  }

  tags {
    Name = "Pub Route Table"
  }
}

resource "aws_route_table_association" "public_a_rt_association" {
  subnet_id      = "${aws_subnet.public_a.id}"
  route_table_id = "${aws_route_table.public_rt.id}"
}

resource "aws_route_table_association" "public_b_rt_association" {
  subnet_id      = "${aws_subnet.public_b.id}"
  route_table_id = "${aws_route_table.public_rt.id}"
}

resource "aws_route_table_association" "public_c_rt_association" {
  subnet_id      = "${aws_subnet.public_c.id}"
  route_table_id = "${aws_route_table.public_rt.id}"
}

# Private Route Table
resource "aws_route_table" "private_rt" {
  vpc_id = "${aws_vpc.vpc.id}"

  tags {
    Name = "Privte Route Table"
  }
}

resource "aws_route_table_association" "private_a_rt_association" {
  subnet_id      = "${aws_subnet.private_a.id}"
  route_table_id = "${aws_route_table.private_rt.id}"
}

resource "aws_route_table_association" "private_b_rt_association" {
  subnet_id      = "${aws_subnet.private_b.id}"
  route_table_id = "${aws_route_table.private_rt.id}"
}

resource "aws_route_table_association" "private_c_rt_association" {
  subnet_id      = "${aws_subnet.private_c.id}"
  route_table_id = "${aws_route_table.private_rt.id}"
}
