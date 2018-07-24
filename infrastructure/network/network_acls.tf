# Private ACLS
resource "aws_network_acl" "private_acl" {
  vpc_id = "${aws_vpc.vpc.id}"

  subnet_ids = [
    "${aws_subnet.private_a.id}",
    "${aws_subnet.private_b.id}",
    "${aws_subnet.private_c.id}",
  ]

  egress {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = "10.0.0.0/16"
    from_port  = 0
    to_port    = 0
  }

  ingress {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = "10.0.0.0/16"
    from_port  = 0
    to_port    = 0
  }

  tags {
    Name      = "${var.environment} Private Subnet ACL"
    Terraform = "true"
  }
}

# DMZ ACLS
resource "aws_network_acl" "dmz_acl" {
  vpc_id = "${aws_vpc.vpc.id}"

  subnet_ids = [
    "${aws_subnet.dmz_a.id}",
    "${aws_subnet.dmz_b.id}",
    "${aws_subnet.dmz_c.id}",
  ]

  egress {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = "10.0.0.0/16"
    from_port  = 0
    to_port    = 0
  }

  ingress {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = "10.0.0.0/16"
    from_port  = 0
    to_port    = 0
  }

  tags {
    Name      = "${var.environment} Private Subnet ACL"
    Terraform = "true"
  }
}

# Public ACLS
resource "aws_network_acl" "dmz_acl" {
  vpc_id = "${aws_vpc.vpc.id}"

  subnet_ids = [
    "${aws_subnet.public_a.id}",
    "${aws_subnet.public_b.id}",
    "${aws_subnet.public_c.id}",
  ]

  egress {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  # TODO: Review this, just port 80 and 443 should be allowed by default
  ingress {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  tags {
    Name      = "${var.environment} Private Subnet ACL"
    Terraform = "true"
  }
}
