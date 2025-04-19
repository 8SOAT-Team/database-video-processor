resource "aws_s3_bucket" "video_processor_techchalenge_bucket" {
  bucket = "video-processor-techchalenge-bucket"

  tags = {
    Name = "video-processor-S3"
  }
}