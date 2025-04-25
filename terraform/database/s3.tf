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

resource "aws_s3_bucket_policy" "processed_bucket_policy" {
  bucket = aws_s3_bucket.processed_bucket_techchallenge.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Sid: "AllowIRSAAccess",
        Effect: "Allow",
        Principal: {
          AWS: "arn:aws:iam::585008076257:role/notificacao-api-irsa-role"
        },
        Action: [
          "s3:GetObject",
          "s3:PutObject",
          "s3:ListBucket"
        ],
        Resource: [
          "arn:aws:s3:::${aws_s3_bucket.processed_bucket_techchallenge.bucket}",
          "arn:aws:s3:::${aws_s3_bucket.processed_bucket_techchallenge.bucket}/*"
        ]
      }
    ]
  })
}
