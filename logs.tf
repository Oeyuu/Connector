resource "aws_cloudwatch_log_group" "connector" {
  name              = "kafka-connector-${var.connector_name}"
  retention_in_days = 90
}
