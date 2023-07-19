variable "connectors" {
  type = list(object({
    name : string,
    kafkaconnect_version : string,
    connector_configuration : map(string)
  }))
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

