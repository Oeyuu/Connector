{
  "version": 4,
  "terraform_version": "1.5.2",
  "serial": 42,
  "lineage": "7e4456f2-aed4-f48c-495a-29cd2d0c4681",
  "outputs": {
    "kafka_topics_list": {
      "value": "__consumer_offsets,test1,test2,test3",
      "type": "string"
    },
    "msk_sg_id": {
      "value": "sg-0e9d81c145b009662",
      "type": "string"
    }
  },
  "resources": [
    {
      "mode": "data",
      "type": "aws_iam_role",
      "name": "super_user",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 0,
          "attributes": {
            "arn": "arn:aws:iam::143805577160:role/super_user_role",
            "assume_role_policy": "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"kafkaconnect.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}",
            "create_date": "2023-07-14T07:42:24Z",
            "description": "",
            "id": "super_user_role",
            "max_session_duration": 3600,
            "name": "super_user_role",
            "path": "/",
            "permissions_boundary": "",
            "tags": {},
            "unique_id": "AROASC63267EKB6KSYQPS"
          },
          "sensitive_attributes": []
        }
      ]
    },
    {
      "mode": "data",
      "type": "aws_msk_cluster",
      "name": "msk_cluster",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 0,
          "attributes": {
            "arn": "arn:aws:kafka:eu-central-1:143805577160:cluster/mskcluster/d8414623-53ee-45e8-8cb8-3e77fbd594c0-8",
            "bootstrap_brokers": "",
            "bootstrap_brokers_public_sasl_iam": "b-1-public.mskcluster.2xflil.c8.kafka.eu-central-1.amazonaws.com:9198,b-2-public.mskcluster.2xflil.c8.kafka.eu-central-1.amazonaws.com:9198,b-3-public.mskcluster.2xflil.c8.kafka.eu-central-1.amazonaws.com:9198",
            "bootstrap_brokers_public_sasl_scram": "b-1-public.mskcluster.2xflil.c8.kafka.eu-central-1.amazonaws.com:9196,b-2-public.mskcluster.2xflil.c8.kafka.eu-central-1.amazonaws.com:9196,b-3-public.mskcluster.2xflil.c8.kafka.eu-central-1.amazonaws.com:9196",
            "bootstrap_brokers_public_tls": "",
            "bootstrap_brokers_sasl_iam": "b-1.mskcluster.2xflil.c8.kafka.eu-central-1.amazonaws.com:9098,b-2.mskcluster.2xflil.c8.kafka.eu-central-1.amazonaws.com:9098,b-3.mskcluster.2xflil.c8.kafka.eu-central-1.amazonaws.com:9098",
            "bootstrap_brokers_sasl_scram": "b-1.mskcluster.2xflil.c8.kafka.eu-central-1.amazonaws.com:9096,b-2.mskcluster.2xflil.c8.kafka.eu-central-1.amazonaws.com:9096,b-3.mskcluster.2xflil.c8.kafka.eu-central-1.amazonaws.com:9096",
            "bootstrap_brokers_tls": "",
            "cluster_name": "mskcluster",
            "id": "arn:aws:kafka:eu-central-1:143805577160:cluster/mskcluster/d8414623-53ee-45e8-8cb8-3e77fbd594c0-8",
            "kafka_version": "3.2.0",
            "number_of_broker_nodes": 3,
            "tags": {},
            "zookeeper_connect_string": "z-1.mskcluster.2xflil.c8.kafka.eu-central-1.amazonaws.com:2181,z-2.mskcluster.2xflil.c8.kafka.eu-central-1.amazonaws.com:2181,z-3.mskcluster.2xflil.c8.kafka.eu-central-1.amazonaws.com:2181",
            "zookeeper_connect_string_tls": "z-1.mskcluster.2xflil.c8.kafka.eu-central-1.amazonaws.com:2182,z-2.mskcluster.2xflil.c8.kafka.eu-central-1.amazonaws.com:2182,z-3.mskcluster.2xflil.c8.kafka.eu-central-1.amazonaws.com:2182"
          },
          "sensitive_attributes": []
        }
      ]
    },
    {
      "mode": "data",
      "type": "aws_region",
      "name": "current",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 0,
          "attributes": {
            "description": "Europe (Frankfurt)",
            "endpoint": "ec2.eu-central-1.amazonaws.com",
            "id": "eu-central-1",
            "name": "eu-central-1"
          },
          "sensitive_attributes": []
        }
      ]
    },
    {
      "mode": "data",
      "type": "aws_security_groups",
      "name": "msk_sg",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 0,
          "attributes": {
            "arns": [
              "arn:aws:ec2:eu-central-1:143805577160:security-group/sg-0e9d81c145b009662"
            ],
            "filter": null,
            "id": "eu-central-1",
            "ids": [
              "sg-0e9d81c145b009662"
            ],
            "tags": {
              "ClusterName": "mskcluster"
            },
            "timeouts": null,
            "vpc_ids": [
              "vpc-0f3adbf16aeadb395"
            ]
          },
          "sensitive_attributes": []
        }
      ]
    },
    {
      "mode": "data",
      "type": "aws_subnets",
      "name": "public",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 0,
          "attributes": {
            "filter": [
              {
                "name": "vpc-id",
                "values": [
                  "vpc-0f3adbf16aeadb395"
                ]
              }
            ],
            "id": "eu-central-1",
            "ids": [
              "subnet-08fbdd9c7e308616b",
              "subnet-04ff14f8b4e3ca26a",
              "subnet-052687dab27893c77"
            ],
            "tags": null,
            "timeouts": null
          },
          "sensitive_attributes": []
        }
      ]
    },
    {
      "mode": "data",
      "type": "external",
      "name": "kafka_topics_list",
      "provider": "provider[\"registry.terraform.io/hashicorp/external\"]",
      "instances": [
        {
          "schema_version": 0,
          "attributes": {
            "id": "-",
            "program": [
              "/bin/bash",
              "./scripts/kafka-topics-list.sh",
              "b-1-public.mskcluster.2xflil.c8.kafka.eu-central-1.amazonaws.com:9198,b-2-public.mskcluster.2xflil.c8.kafka.eu-central-1.amazonaws.com:9198,b-3-public.mskcluster.2xflil.c8.kafka.eu-central-1.amazonaws.com:9198"
            ],
            "query": null,
            "result": {
              "output": "__consumer_offsets,test1,test2,test3"
            },
            "working_dir": null
          },
          "sensitive_attributes": []
        }
      ]
    },
    {
      "mode": "managed",
      "type": "aws_cloudwatch_log_group",
      "name": "connector",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 0,
          "attributes": {
            "arn": "arn:aws:logs:eu-central-1:143805577160:log-group:kafka-connector-s3sink",
            "id": "kafka-connector-s3sink",
            "kms_key_id": "",
            "name": "kafka-connector-s3sink",
            "name_prefix": "",
            "retention_in_days": 90,
            "skip_destroy": false,
            "tags": {},
            "tags_all": {}
          },
          "sensitive_attributes": [],
          "private": "bnVsbA=="
        }
      ]
    },
    {
      "mode": "managed",
      "type": "aws_mskconnect_connector",
      "name": "connector",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "status": "tainted",
          "schema_version": 0,
          "attributes": {
            "arn": null,
            "capacity": [
              {
                "autoscaling": [
                  {
                    "max_worker_count": 2,
                    "mcu_count": 1,
                    "min_worker_count": 1,
                    "scale_in_policy": [
                      {
                        "cpu_utilization_percentage": 20
                      }
                    ],
                    "scale_out_policy": [
                      {
                        "cpu_utilization_percentage": 80
                      }
                    ]
                  }
                ],
                "provisioned_capacity": []
              }
            ],
            "connector_configuration": {
              "confluent.topic.bootstrap.servers": "b-1.mskcluster.2xflil.c8.kafka.eu-central-1.amazonaws.com:9098,b-2.mskcluster.2xflil.c8.kafka.eu-central-1.amazonaws.com:9098,b-3.mskcluster.2xflil.c8.kafka.eu-central-1.amazonaws.com:9098",
              "connector.class": "io.confluent.connect.s3.S3SinkConnector",
              "flush.size": "1",
              "format.class": "io.confluent.connect.s3.format.json.JsonFormat",
              "partioner.class": "io.confluent.connect.storage.partitioner.DefaultPartitioner",
              "s3.bucket.name": "teclify-sandbox-143805577160-msk-backup",
              "s3.region": "eu-central-1",
              "schema.compatibility": "NONE",
              "storage.class": "io.confluent.connect.s3.storage.S3Storage",
              "tasks.max": "1",
              "topics": "__consumer_offsets,test1,test2,test3"
            },
            "description": null,
            "id": "arn:aws:kafkaconnect:eu-central-1:143805577160:connector/s3sink/8d338437-4eca-4233-a33e-96b7d9f4cf8c-4",
            "kafka_cluster": [
              {
                "apache_kafka_cluster": [
                  {
                    "bootstrap_servers": "b-1.mskcluster.2xflil.c8.kafka.eu-central-1.amazonaws.com:9098,b-2.mskcluster.2xflil.c8.kafka.eu-central-1.amazonaws.com:9098,b-3.mskcluster.2xflil.c8.kafka.eu-central-1.amazonaws.com:9098",
                    "vpc": [
                      {
                        "security_groups": [
                          "sg-0e9d81c145b009662"
                        ],
                        "subnets": [
                          "subnet-04ff14f8b4e3ca26a",
                          "subnet-052687dab27893c77",
                          "subnet-08fbdd9c7e308616b"
                        ]
                      }
                    ]
                  }
                ]
              }
            ],
            "kafka_cluster_client_authentication": [
              {
                "authentication_type": "IAM"
              }
            ],
            "kafka_cluster_encryption_in_transit": [
              {
                "encryption_type": "TLS"
              }
            ],
            "kafkaconnect_version": "2.7.1",
            "log_delivery": [
              {
                "worker_log_delivery": [
                  {
                    "cloudwatch_logs": [
                      {
                        "enabled": true,
                        "log_group": "kafka-connector-s3sink"
                      }
                    ],
                    "firehose": [],
                    "s3": []
                  }
                ]
              }
            ],
            "name": "s3sink",
            "plugin": [
              {
                "custom_plugin": [
                  {
                    "arn": "arn:aws:kafkaconnect:eu-central-1:143805577160:custom-plugin/s3sink/0e845b61-59ae-4cfd-a143-0115d0315812-4",
                    "revision": 1
                  }
                ]
              }
            ],
            "service_execution_role_arn": "arn:aws:iam::143805577160:role/super_user_role",
            "timeouts": null,
            "version": null,
            "worker_configuration": []
          },
          "sensitive_attributes": [],
          "private": "eyJlMmJmYjczMC1lY2FhLTExZTYtOGY4OC0zNDM2M2JjN2M0YzAiOnsiY3JlYXRlIjoxMjAwMDAwMDAwMDAwLCJkZWxldGUiOjYwMDAwMDAwMDAwMCwidXBkYXRlIjoxMjAwMDAwMDAwMDAwfX0=",
          "dependencies": [
            "aws_cloudwatch_log_group.connector",
            "aws_mskconnect_custom_plugin.connector_install",
            "aws_s3_bucket.s3sink",
            "data.aws_iam_role.super_user",
            "data.aws_msk_cluster.msk_cluster",
            "data.aws_security_groups.msk_sg",
            "data.aws_subnets.public",
            "data.external.kafka_topics_list"
          ]
        }
      ]
    },
    {
      "mode": "managed",
      "type": "aws_mskconnect_custom_plugin",
      "name": "connector_install",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 0,
          "attributes": {
            "arn": "arn:aws:kafkaconnect:eu-central-1:143805577160:custom-plugin/s3sink/0e845b61-59ae-4cfd-a143-0115d0315812-4",
            "content_type": "ZIP",
            "description": "",
            "id": "arn:aws:kafkaconnect:eu-central-1:143805577160:custom-plugin/s3sink/0e845b61-59ae-4cfd-a143-0115d0315812-4",
            "latest_revision": 1,
            "location": [
              {
                "s3": [
                  {
                    "bucket_arn": "arn:aws:s3:::teclify-sandbox-143805577160-msk-distributions",
                    "file_key": "s3sink/10.5.1.zip",
                    "object_version": ""
                  }
                ]
              }
            ],
            "name": "s3sink",
            "state": "ACTIVE",
            "timeouts": null
          },
          "sensitive_attributes": [],
          "private": "eyJlMmJmYjczMC1lY2FhLTExZTYtOGY4OC0zNDM2M2JjN2M0YzAiOnsiY3JlYXRlIjo2MDAwMDAwMDAwMDAsImRlbGV0ZSI6NjAwMDAwMDAwMDAwfX0=",
          "dependencies": [
            "aws_s3_bucket.distributions"
          ]
        }
      ]
    },
    {
      "mode": "managed",
      "type": "aws_s3_bucket",
      "name": "distributions",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 0,
          "attributes": {
            "acceleration_status": "",
            "acl": null,
            "arn": "arn:aws:s3:::teclify-sandbox-143805577160-msk-distributions",
            "bucket": "teclify-sandbox-143805577160-msk-distributions",
            "bucket_domain_name": "teclify-sandbox-143805577160-msk-distributions.s3.amazonaws.com",
            "bucket_prefix": null,
            "bucket_regional_domain_name": "teclify-sandbox-143805577160-msk-distributions.s3.eu-central-1.amazonaws.com",
            "cors_rule": [],
            "force_destroy": false,
            "grant": [
              {
                "id": "46bb8f130f420d2c782f037ce12b0c2472b99c88daaba351289ccfa98d865103",
                "permissions": [
                  "FULL_CONTROL"
                ],
                "type": "CanonicalUser",
                "uri": ""
              }
            ],
            "hosted_zone_id": "Z21DNDUVLTQW6Q",
            "id": "teclify-sandbox-143805577160-msk-distributions",
            "lifecycle_rule": [],
            "logging": [],
            "object_lock_configuration": [],
            "object_lock_enabled": false,
            "policy": "",
            "region": "eu-central-1",
            "replication_configuration": [],
            "request_payer": "BucketOwner",
            "server_side_encryption_configuration": [
              {
                "rule": [
                  {
                    "apply_server_side_encryption_by_default": [
                      {
                        "kms_master_key_id": "",
                        "sse_algorithm": "AES256"
                      }
                    ],
                    "bucket_key_enabled": false
                  }
                ]
              }
            ],
            "tags": {},
            "tags_all": {},
            "timeouts": null,
            "versioning": [
              {
                "enabled": false,
                "mfa_delete": false
              }
            ],
            "website": [],
            "website_domain": null,
            "website_endpoint": null
          },
          "sensitive_attributes": [],
          "private": "eyJlMmJmYjczMC1lY2FhLTExZTYtOGY4OC0zNDM2M2JjN2M0YzAiOnsiY3JlYXRlIjoxMjAwMDAwMDAwMDAwLCJkZWxldGUiOjM2MDAwMDAwMDAwMDAsInJlYWQiOjEyMDAwMDAwMDAwMDAsInVwZGF0ZSI6MTIwMDAwMDAwMDAwMH19"
        }
      ]
    },
    {
      "mode": "managed",
      "type": "aws_s3_bucket",
      "name": "s3sink",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 0,
          "attributes": {
            "acceleration_status": "",
            "acl": null,
            "arn": "arn:aws:s3:::teclify-sandbox-143805577160-msk-backup",
            "bucket": "teclify-sandbox-143805577160-msk-backup",
            "bucket_domain_name": "teclify-sandbox-143805577160-msk-backup.s3.amazonaws.com",
            "bucket_prefix": null,
            "bucket_regional_domain_name": "teclify-sandbox-143805577160-msk-backup.s3.eu-central-1.amazonaws.com",
            "cors_rule": [],
            "force_destroy": false,
            "grant": [
              {
                "id": "46bb8f130f420d2c782f037ce12b0c2472b99c88daaba351289ccfa98d865103",
                "permissions": [
                  "FULL_CONTROL"
                ],
                "type": "CanonicalUser",
                "uri": ""
              }
            ],
            "hosted_zone_id": "Z21DNDUVLTQW6Q",
            "id": "teclify-sandbox-143805577160-msk-backup",
            "lifecycle_rule": [],
            "logging": [],
            "object_lock_configuration": [],
            "object_lock_enabled": false,
            "policy": "",
            "region": "eu-central-1",
            "replication_configuration": [],
            "request_payer": "BucketOwner",
            "server_side_encryption_configuration": [
              {
                "rule": [
                  {
                    "apply_server_side_encryption_by_default": [
                      {
                        "kms_master_key_id": "",
                        "sse_algorithm": "AES256"
                      }
                    ],
                    "bucket_key_enabled": false
                  }
                ]
              }
            ],
            "tags": {},
            "tags_all": {},
            "timeouts": null,
            "versioning": [
              {
                "enabled": false,
                "mfa_delete": false
              }
            ],
            "website": [],
            "website_domain": null,
            "website_endpoint": null
          },
          "sensitive_attributes": [],
          "private": "eyJlMmJmYjczMC1lY2FhLTExZTYtOGY4OC0zNDM2M2JjN2M0YzAiOnsiY3JlYXRlIjoxMjAwMDAwMDAwMDAwLCJkZWxldGUiOjM2MDAwMDAwMDAwMDAsInJlYWQiOjEyMDAwMDAwMDAwMDAsInVwZGF0ZSI6MTIwMDAwMDAwMDAwMH19"
        }
      ]
    },
    {
      "mode": "managed",
      "type": "aws_s3_object",
      "name": "connector_distribution",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 0,
          "attributes": {
            "acl": null,
            "bucket": "teclify-sandbox-143805577160-msk-distributions",
            "bucket_key_enabled": false,
            "cache_control": "",
            "content": null,
            "content_base64": null,
            "content_disposition": "",
            "content_encoding": "",
            "content_language": "",
            "content_type": "application/zip",
            "etag": "f0c72a04c1f02236d231d06200f90883-5",
            "force_destroy": null,
            "id": "s3sink/10.5.1.zip",
            "key": "s3sink/10.5.1.zip",
            "kms_key_id": null,
            "metadata": {},
            "object_lock_legal_hold_status": "",
            "object_lock_mode": "",
            "object_lock_retain_until_date": "",
            "server_side_encryption": "AES256",
            "source": null,
            "source_hash": null,
            "storage_class": "STANDARD",
            "tags": {},
            "tags_all": {},
            "version_id": "",
            "website_redirect": ""
          },
          "sensitive_attributes": [],
          "private": "eyJzY2hlbWFfdmVyc2lvbiI6IjAifQ=="
        }
      ]
    },
    {
      "mode": "managed",
      "type": "null_resource",
      "name": "connector_distribution_download",
      "provider": "provider[\"registry.terraform.io/hashicorp/null\"]",
      "instances": [
        {
          "schema_version": 0,
          "attributes": {
            "id": "428455580356246808",
            "triggers": {
              "always_run": "2023-07-14T12:13:56Z"
            }
          },
          "sensitive_attributes": []
        }
      ]
    }
  ],
  "check_results": null
}
