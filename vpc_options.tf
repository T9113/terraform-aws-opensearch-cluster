resource "aws_security_group" "opensearch" {
  name        = "opensearch-cluster-sg"
  description = "Access to OpenSearch cluster"
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }
}
