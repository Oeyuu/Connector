data "aws_msk_cluster" "msk_cluster" {
  cluster_name = var.msk_cluster_name
}

data "aws_iam_role" "super_user" {
  name = var.iam_role_name
}

data "aws_s3_bucket" "distributions" {
  bucket = var.s3_bucket_distributions
}

data "aws_security_groups" "msk_sg" {
  tags = {
    ClusterName = var.msk_cluster_name
  }
}

data "aws_subnets" "private" {
  filter {
    name   = "vpc-id"
    values = data.aws_security_groups.msk_sg.vpc_ids
  }
  tags = {
    tier = "private"
  }
}

data "aws_region" "current" {
  name = var.region
}