resource "aws_wafv2_web_acl" "waf_acl" {
  name        = "Security-WAF"
  description = "WAF to protect against common attacks"
  scope       = "REGIONAL"

  default_action {
    allow {}
  }

  rule {
    name     = "SQLInjectionProtection"
    priority = var.waf_rule_priority

    statement {
      sqli_match_statement {
        field_to_match {
          uri_path {}
        }
        text_transformation {
          priority = 0
          type     = "URL_DECODE"
        }
      }
    }

    action {
      block {}
    }
  }

  visibility_config {
    cloudwatch_metrics_enabled = true
    metric_name                = "WAFMetric"
    sampled_requests_enabled   = true
  }
}

