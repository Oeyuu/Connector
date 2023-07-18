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
    "connector.class"                   = var.connector_configuration.connector_class
    "s3.region"                         = var.connector_configuration.s3_region
    "format.class"                      =  var.connector_configuration.format_class
    "flush.size"                        =  var.connector_configuration.flush_size
    "schema.compatibility"              =  var.connector_configuration.schema_compatibility
    "partioner.class"                   =  var.connector_configuration.partioner_class
    "storage.class"                     =  var.connector_configuration.storage_class
    "s3.bucket.name"                    =  var.connector_configuration.s3_bucket_name
    "tasks.max"                         =  var.connector_configuration.tasks_max
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
      bucket_arn = data.aws_s3_bucket.distributions.arn
      file_key   = aws_s3_object.connector_distribution.key
    }
  }
}
