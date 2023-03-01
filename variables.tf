variable "name" {
  description = "The name of the networked environment. Example region-dev-eks"
  type        = string
}

variable "region" {
  type        = string
  description = "The AWS region for the provider to deploy resources into."
}

variable "cidr_block" {
  type        = string
  description = "The IP address range of the environment in CIDR notation."
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "The tags for the resources in the environment."
}

variable "availability_zones" {
  type        = list(any)
  description = "The availability zones for the environment. Examples: eu-west-1a, eu-west-1b"
}