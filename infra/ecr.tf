resource "aws_ecr_repository" "repository" {
  name = var.cluster_name
}