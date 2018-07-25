output "private_subnets" {
  value = "${list(
aws_subnet.private_a.id,
aws_subnet.private_b.id,
aws_subnet.private_c.id
  )}"
}

output "dmz_subnets" {
  value = "${list(
aws_subnet.dmz_a.id,
aws_subnet.dmz_b.id,
aws_subnet.dmz_c.id
  )}"
}

output "public_subnets" {
  value = "${list(
aws_subnet.public_a.id,
aws_subnet.public_b.id,
aws_subnet.public_c.id
  )}"
}

output "vpc" {
  value = "${aws_vpc.vpc.id}"
}
