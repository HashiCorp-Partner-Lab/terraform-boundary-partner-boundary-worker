variable "boundary_addr" {
  type = string
  description = "Boundary URL - This information is stored within a Variable Set"
  default     = ""
}

variable "boundary_admin_username" {
  type        = string
  description = "Boundary Admin UI Login Name"
  default     = "admin"
}

variable "boundary_admin_password" {
  type        = string
  description = "Boundary Admin UI Password"
}

variable "aws_access" {
  type = string
}

variable "aws_secret" {
  type = string
}

variable "aws_region" {
  type    = string
  default = "eu-west-2"
}

variable "aws_vpc_cidr" {
  type        = string
  description = "The AWS Region CIDR range to assign to the VPC"
}

variable "aws_subnet_cidr" {
  type        = string
  description = "The AWS Region CIDR range"
}

variable "availability_zone" {
  type        = string
  description = "Region within AWS to deploy the resources"
  default     = "eu-west-2b"
}