resource "aws_s3_bucket" "bucket" {
  bucket = "carlos-ponce-remote-state"
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}