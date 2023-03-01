data "aws_region" "current" {}

resource "aws_vpc" "main" {
  cidr_block       = var.cidr_block
  instance_tenancy = "default"
  tags             = merge(var.tags, {
    "Name" = "vpc-${var.name}-${data.aws_region.current.name}"
  })
}