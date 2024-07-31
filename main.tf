resource "aws_s3_bucket" "mybucket" {
  bucket = "sucharithak-bucket1"
  tags = {
    Name = "mysecondbucket"
  }
}

resource "aws_s3_bucket_object" "myobject" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "myprojectpage"
  acl    = "private"
  source = "index.html"
  etag   = filemd5("index.html")
}


