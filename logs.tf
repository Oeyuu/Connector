resource "aws_cloudwatch_log_group" "connector" {
  name              = "kafka-connector-${var.connectors[0].name}"
  retention_in_days = 90
}
