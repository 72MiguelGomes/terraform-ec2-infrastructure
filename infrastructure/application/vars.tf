variable "vpc_id" {
  description = "VPC Identifier"
}

variable "private_subnets" {
  type        = "list"
  description = "List of Private subnets"
}

variable "dmz_subnets" {
  type        = "list"
  description = "List of DMZ subnets"
}

variable "public_subnets" {
  type        = "list"
  description = "List of Public subnets"
}
