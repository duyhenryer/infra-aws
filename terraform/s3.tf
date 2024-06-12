resource "aws_s3_bucket" "terraform-tfstate" {
  bucket = "duynh-terraform-tfstate"
  tags = {
    Name = "${local.env}-main"
  }
}

resource "aws_s3_bucket_ownership_controls" "terraform-tfstate" {
  bucket = aws_s3_bucket.terraform-tfstate.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "terraform-tfstate" {
  depends_on = [aws_s3_bucket_ownership_controls.terraform-tfstate]

  bucket = aws_s3_bucket.terraform-tfstate.id
  acl    = "private"
}
