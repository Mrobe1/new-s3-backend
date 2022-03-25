resource "aws_s3_bucket" "my_state_bucket" {
    bucket = "John1-816606439534-tfstates"

    lifecycle {
      prevent_destroy = true
    }

    tags = {
        Name = "John1-816606439534-tfstates"
        Environment = "Test"
    }
}

resource "aws_s3_bucket_versioning" "version_my_bucket" {
  bucket = aws_s3_bucket.my_state_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}