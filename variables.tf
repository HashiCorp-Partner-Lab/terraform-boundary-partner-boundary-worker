variable "boundary_addr" {
  type = string
  description = "Boundary URL"
}

variable "boundary_admin_username" {
  type        = string
  description = "Boundary Admin UI Login Name"
  default     = "admin"
}

variable "org_id" {
  type = string
  description = "Boundary Org ID"
  default = "global"
}

variable "project_id" {
  type = string
  description = "Boundary Project ID"
  default = "o_xxxxxxxxxx"
}

variable "boundary_admin_password" {
  type        = string
  description = "Boundary Admin UI Password"
  sensitive = true
}

variable "aws_access" {
  type = string
}

variable "aws_secret" {
  type = string
  sensitive = true
}

variable "aws_region" {
  type    = string
  default = "eu-west-2"
}

variable "aws_vpc_cidr" {
  type        = string
  description = "The AWS Region CIDR range to assign to the VPC"
  default = "172.31.0.0/16"
}

variable "aws_subnet_cidr" {
  type        = string
  description = "The AWS Region CIDR range"
  default = "172.31.32.0/24"
}

variable "availability_zone" {
  type        = string
  description = "Region within AWS to deploy the resources"
  default     = "eu-west-2b"
}

variable "ssh_key_name" {
  type = string
  description = "SSH Key name to associate to EC2 Instance. This needs to be created before provisioning"
}