# Connector

Dieses Terraform-Modul erstellt einen Kafka Connector auf der AWS MSK.

## Voraussetzungen

Bevor du dieses Modul verwendest, stellen sicher, dass du:

- ein AWS-Konto und die entsprechenden Berechtigungen zum Erstellen von Ressourcen hast.
- grundlegendes Wissen über Terraform und AWS MSK besitzt.

## Funktionen

Dieses Modul richtet folgende Ressourcen ein:

- Ein AWS MSK-Cluster mit den angegebenen Konfigurationen.
- IAM-Rollen und -Policies für den MSK-Cluster und seine Komponenten.
- VPC, Subnetze und Sicherheitsgruppen, die für den MSK-Cluster erforderlich sind.
- Kafka Connect-Konfiguration mit den erforderlichen Plugins und Einstellungen.
- AWS Secrets Manager zur sicheren Speicherung sensibler Connector-Konfigurationen.

## Verwendung

Füge den folgenden Code zu deiner Terraform-Konfiguration hinzu, um dieses Modul zu verwenden:

```hcl
module "kafka_connector" {
  source  = "Oeyuu/connector/aws"
  version = "1.0.0"

  # Gib hier deine Eingabevariablen an
  connector_name            = string
  connector_description     = string
  msk_cluster_name          = string
  s3_bucket_distributions   = string
  region                    = string
  connector_configuration   = object(map)
  iam_role_name             = string
  distribution_url          = string
  distribution_version      = string
  distribution_content_type = string
  kafkaconnect_version      = string
}
