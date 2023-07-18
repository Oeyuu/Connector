resource "null_resource" "connector_distribution_download" {
  triggers = {
    always_run = timestamp()
  }
  provisioner "local-exec" {
    command = <<-EOT
            mkdir -p /tmp/distributions/${var.connector_name} || true && rm /tmp/distributions/${var.connector_name}//${var.distribution_version}.${lower(var.distribution_content_type)} || true && curl -s -L ${var.distribution_url} >> /tmp/distributions/${var.connector_name}/${var.distribution_version}.${lower(var.distribution_content_type)}  
        EOT
  }
}


resource "aws_s3_object" "connector_distribution" {
  depends_on = [null_resource.connector_distribution_download]
  bucket     = data.aws_s3_bucket.distributions.id
  key        = "${var.connector_name}/${var.distribution_version}.${lower(var.distribution_content_type)}"
  source     = "/tmp/distributions/${var.connector_name}/${var.distribution_version}.${lower(var.distribution_content_type)}"
}
