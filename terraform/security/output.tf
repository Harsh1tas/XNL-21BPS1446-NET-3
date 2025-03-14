
output "iam_role_arn" {
  description = "IAM Role ARN"
  value       = aws_iam_role.security_role.arn
}

output "firewall_id" {
  description = "Firewall/Security Group ID"
  value       = aws_security_group.security_group.id
}

output "waf_arn" {
  description = "WAF Web ACL ARN"
  value       = aws_wafv2_web_acl.waf_acl.arn
}

