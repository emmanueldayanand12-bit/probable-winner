# This is a valid, empty Terraform configuration
terraform {
  # No providers needed for this test
}
resource "aws_s3_bucket" "test_bucket" {
  bucket = "jenkins-test-bucket-${random_id.id.hex}"
}

resource "random_id" "id" {
  byte_length = 4
}
