resource "aws_vpc" "main" {         # Creating VPC here
  cidr_block       = var.cidr_block # Defining the CIDR block use 10.0.0.0/24 for demo
  instance_tenancy = "default"
  tags = merge(var.tags, {
    "Name" = "vpc-${var.name}-${data.aws_region.current.name}"
  })
}
}
