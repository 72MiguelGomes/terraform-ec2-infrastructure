resource "aws_security_group" "public_elb_http_sg" {
  name        = "ELB HTTP SG"
  description = "Allow HTTP traffic to 80 and 443"
  vpc_id      = "${var.vpc_id}"

  ingress {
    from_port   = 80
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "ec2_http_sg" {
  name        = "EC2 service SG"
  description = "Allow traffic from HTTP ELB"
  vpc_id      = "${var.vpc_id}"

  ingress {
    from_port       = 8080
    to_port         = 8080
    protocol        = "tcp"
    security_groups = ["${aws_security_group.public_elb_http_sg.id}"]
  }
}
