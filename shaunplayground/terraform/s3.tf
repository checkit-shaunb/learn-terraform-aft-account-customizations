data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "sandbox_bucket" {
  bucket = "shaunplayground-${data.aws_caller_identity.current.account_id}"
}
