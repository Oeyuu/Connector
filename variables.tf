variable "connector_name" {
  type    = string
}

variable "connector_description" {
  type    = string
  default = ""
}

variable "msk_cluster_name" {
  type    = string
}

variable "region" {
  type    = string
}

variable "connector_configuration" {
  description = "Configuration for the connector"
  type        = map(any)
}

variable "iam_role_name" {
  type    = string
}

variable "distribution_url" {
  type    = string
  }

variable "distribution_version" {
  type    = string
}

variable "distribution_content_type" {
  type    = string
}

variable "kafkaconnect_version" {
  type    = string
}

# variable "" {
#   type = object(any)
#   default = {
#     "connector.class"      = "io.confluent.connect.s3.S3SinkConnector"
#     "s3.region"            = aws_s3_bucket.bucket.region
#     "format.class"         = "io.confluent.connect.s3.format.json.JsonFormat"
#     "flush.size"           = "1"
#     "schema.compatibility" = "NONE"
#     "partioner.class"      = "io.confluent.connect.storage.partitioner.DefaultPartitioner"
#     "storage.class"        = "io.confluent.connect.s3.storage.S3Storage"
#     "s3.bucket.name"       = aws_s3_bucket.bucket.id
#     "tasks.max"            = "1"
#     "topics"               = data.external.kafka_topics_list.result["output"]
#     "confluent.topic.bootstrap.servers" = data.aws_msk_cluster.msk_cluster.bootstrap_brokers_sasl_iam
#   }
# }
