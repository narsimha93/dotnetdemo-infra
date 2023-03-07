resource "aws_s3_bucket" "blasnjsbcj" {
  bucket = var.bucket_name


  tags = {
    Name        = "bermtec-dev"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.blasnjsbcj.id
  versioning_configuration {
    status = "Enabled"
  }

  depends_on = [
    aws_s3_bucket.blasnjsbcj
  ]
}