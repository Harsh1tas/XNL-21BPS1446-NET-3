variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "VPC CIDR Block"
}

variable "public_subnet_cidr" {
  description = "Public Subnet CIDR"
}

variable "ami_id" {
  description = "AMI ID for EC2"
}

variable "instance_type" {
  description = "Instance Type"
}

