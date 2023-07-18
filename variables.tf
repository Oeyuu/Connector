variable "connector_name" {
  type = string
}

variable "connector_description" {
  type    = string
  default = ""
}

variable "msk_cluster_name" {
  type = string
}

variable "s3_bucket_distributions" {
  type = string
}

variable "region" {
  type = string
}

variable "connector_configuration" {
  description = "Configuration for the connector"
  type = object({
      connector_class                   = string
      s3_region                         = string
      format_class                      = string
      flush_size                        = string
      schema_compatibility              = string
      partioner_class                   = string
      storage_class                     = string
      s3_bucket_name                    = string
      tasks_max                         = string
  })
}

# variable "connector_configurations" {

#   type = object ({})
#   default  = {
#         "connector.class"= "io.confluent.connect.s3.S3SinkConnector",
#         "s3.region"= "aws_s3_bucket.s3sink.region",
#         "format.class"= "io.confluent.connect.s3.format.json.JsonFormat",
#         "flush.size"= "1",
#         "schema.compatibility"= "NONE",
#         "partioner.class"= "io.confluent.connect.storage.partitioner.DefaultPartitioner",
#         "storage.class"= "io.confluent.connect.s3.storage.S3Storage",
#         "s3.bucket.name"= "teclify-sandbox-143805577160-msk-backup",
#         "tasks.max"= "1",
#         "topics"= [
#             "test1",
#             "test2",
#             "test3"
#         ],
#         "confluent.topic.bootstrap.servers"= [
#             "b-3-public.mskcluster.7ypzjv.c8.kafka.eu-central-1.amazonaws.com:9198",
#             "b-2-public.mskcluster.7ypzjv.c8.kafka.eu-central-1.amazonaws.com:9198",
#             "b-1-public.mskcluster.7ypzjv.c8.kafka.eu-central-1.amazonaws.com:9198"
#         ]

#   }
# }


variable "iam_role_name" {
  type = string
}

variable "distribution_url" {
  type = string
}

variable "distribution_version" {
  type = string
}

variable "distribution_content_type" {
  type = string
}

variable "kafkaconnect_version" {
  type = string
}
