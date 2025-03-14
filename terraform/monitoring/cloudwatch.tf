resource "aws_cloudwatch_log_group" "main" {
  name              = "application-logs"
  retention_in_days = var.log_retention_days
}

resource "aws_cloudwatch_metric_alarm" "cpu_high" {
  alarm_name          = "HighCPUUsage"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace          = "AWS/EC2"
  period             = 300
  statistic          = "Average"
  threshold          = 80
  alarm_actions      = [aws_sns_topic.alerts.arn]
  dimensions = {
    InstanceId = "i-1234567890abcdef0"
  }
}

resource "aws_sns_topic" "alerts" {
  name = "cloudwatch-alerts"
}

