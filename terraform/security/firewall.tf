resource "aws_security_group" "security_group" {
  name        = "SecurityGroup"
  description = "Security group with limited access"
  vpc_id      = aws_vpc.main.id

  # Allow SSH Access
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.firewall_cidr]
  }

  # Allow HTTP Access
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.firewall_cidr]
  }

  # Allow HTTPS Access
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.firewall_cidr]
  }

  # Outbound Rules (Allow All)
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

