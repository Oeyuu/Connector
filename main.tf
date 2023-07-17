resource "aws_mskconnect_connector" "connector" {
  name = var.connector_name

  kafkaconnect_version = var.kafkaconnect_version

  capacity {
    autoscaling {
      mcu_count        = 1
      min_worker_count = 1
      max_worker_count = 2

      scale_in_policy {
        cpu_utilization_percentage = 20
      }

      scale_out_policy {
        cpu_utilization_percentage = 80
      }
    }
  }

  connector_configuration = {
    "connector.class"                   = "io.confluent.connect.s3.S3SinkConnector"
    "s3.region"                         = aws_s3_bucket.s3sink.region
    "format.class"                      = "io.confluent.connect.s3.format.json.JsonFormat"
    "flush.size"                        = "1"
    "schema.compatibility"              = "NONE"
    "partioner.class"                   = "io.confluent.connect.storage.partitioner.DefaultPartitioner"
    "storage.class"                     = "io.confluent.connect.s3.storage.S3Storage"
    "s3.bucket.name"                    = aws_s3_bucket.s3sink.id
    "tasks.max"                         = "1"
    "topics"                            = data.external.kafka_topics_list.result["output"]
    "confluent.topic.bootstrap.servers" = data.aws_msk_cluster.msk_cluster.bootstrap_brokers_sasl_iam
  }

  kafka_cluster {
    apache_kafka_cluster {
      bootstrap_servers = data.aws_msk_cluster.msk_cluster.bootstrap_brokers_sasl_iam

      vpc {
        security_groups = data.aws_security_groups.msk_sg.ids
        subnets         = data.aws_subnets.private.ids
      }
    }
  }

  kafka_cluster_client_authentication {
    authentication_type = "IAM"
  }

  kafka_cluster_encryption_in_transit {
    encryption_type = "TLS"
  }

  plugin {
    custom_plugin {
      arn      = aws_mskconnect_custom_plugin.connector_install.arn
      revision = aws_mskconnect_custom_plugin.connector_install.latest_revision
    }
  }

  log_delivery {
    worker_log_delivery {
      cloudwatch_logs {
        enabled   = true
        log_group = aws_cloudwatch_log_group.connector.id
      }
    }
  }

  service_execution_role_arn = data.aws_iam_role.super_user.arn
}

resource "aws_mskconnect_custom_plugin" "connector_install" {
  depends_on   = [aws_s3_object.connector_distribution]
  name         = var.connector_name
  description  = var.connector_description
  content_type = upper(var.distribution_content_type)
  location {
    s3 {
      bucket_arn = aws_s3_bucket.distributions.arn
      file_key   = aws_s3_object.connector_distribution.key
      #file_key = "s3sink/10.5.1.zip"
    }
  }
}
