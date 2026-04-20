# This is a "No-Op" resource. It does nothing but succeed.
# Perfect for testing if your pipeline works.
resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo 'Terraform is working!'"
  }
}
