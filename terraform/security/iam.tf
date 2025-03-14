provider "aws" {
  region = var.aws_region
}

# Create IAM User
resource "aws_iam_user" "security_user" {
  name = var.iam_user_name
}

# Attach IAM Policy to User
resource "aws_iam_policy" "security_policy" {
  name        = "SecurityPolicy"
  description = "IAM policy for security user"
  policy      = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action   = ["s3:ListBucket", "ec2:DescribeInstances"]
      Effect   = "Allow"
      Resource = "*"
    }]
  })
}

# Attach Policy to IAM User
resource "aws_iam_user_policy_attachment" "security_attach" {
  user       = aws_iam_user.security_user.name
  policy_arn = aws_iam_policy.security_policy.arn
}

# Create IAM Role
resource "aws_iam_role" "security_role" {
  name = "SecurityRole"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
      Action = "sts:AssumeRole"
    }]
  })
}

