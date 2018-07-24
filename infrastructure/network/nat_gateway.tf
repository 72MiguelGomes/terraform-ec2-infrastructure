resource "aws_nat_gateway" "nat_gw" {
  allocation_id = "${aws_eip.nat.id}"
  subnet_id     = "${aws_subnet.public_a.id}"

  tags {
    Name      = "NAT Gateway"
    Terraform = "true"
  }
}

resource "aws_eip" "nat" {
  vpc = true

  tags {
    Name      = "NAT EIP"
    Terraform = "true"
  }

  depends_on = ["aws_internet_gateway.internet_gw"]
}
