resource "aws_opensearch_domain" "cluster" {
  domain_name    = "prod-search-cluster"
  engine_version = "OpenSearch_2.11"

  cluster_config {
    instance_type          = "r6g.large.search"
    instance_count         = 3
    zone_awareness_enabled = true
  }
}
