# A simple resource that doesn't require any cloud provider
resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo Hello DevOps World"
  }
}
