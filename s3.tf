resource "aws_s3_bucket" "s3" {
  bucket = var.bucket_name


  tags = merge(local.tags, {
    Name ="${var.project}-s3-${var.environment}"
  })
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.s3.id
  versioning_configuration {
    status = "Enabled"
  }

  depends_on = [
    aws_s3_bucket.s3
  ]
}