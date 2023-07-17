output "kafka_topics_list" {
  value = data.external.kafka_topics_list.result["output"]
}

output "msk_sg_id" {
  value = data.aws_security_groups.msk_sg.ids[0]
}

