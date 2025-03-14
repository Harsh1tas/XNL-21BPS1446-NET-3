variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "iam_user_name" {
  description = "IAM User Name"
  type        = string
}

variable "firewall_cidr" {
  description = "CIDR block for security group"
  type        = string
  default     = "0.0.0.0/0"
}

variable "waf_rule_priority" {
  description = "Priority of WAF rule"
  type        = number
  default     = 1
}

