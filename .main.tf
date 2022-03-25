resource "aws_s3_bucket" "mike_state_bucket" {
    bucket = "my-tf-test-bucket"

    lifecycle {
      prevent_destroy = true
    }

    tags = {
        Name = "my bucket"
        Environment = "Test"
    }
}

resource "aws_s3_bucket_versioning" "version_my_bucket" {
  bucket = aws_s3_bucket.mike_state_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}