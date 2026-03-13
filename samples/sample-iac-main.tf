terraform {
  required_version = ">= 1.6.0"
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_s3_bucket" "logs_archive" {
  bucket = "company-demo-logs-archive"
  force_destroy = false
}

resource "aws_s3_bucket_public_access_block" "logs_archive" {
  bucket                  = aws_s3_bucket.logs_archive.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_security_group" "app" {
  name        = "demo-app-sg"
  description = "Security group for demo app"

  ingress {
    description = "HTTPS from corporate VPN"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["10.20.0.0/16"]
  }

  egress {
    description = "Outbound access"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
