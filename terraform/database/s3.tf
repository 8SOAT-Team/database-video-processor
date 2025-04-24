resource "aws_s3_bucket" "processed_bucket_techchallenge" {
  bucket = "processed-bucket-techchallenge"

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["GET", "PUT", "POST"]
    allowed_origins = ["*"]
    expose_headers  = []
    max_age_seconds = 3000
  }
}
