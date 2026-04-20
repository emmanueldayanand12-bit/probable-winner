# This tells Terraform which cloud/system to talk to
terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.5.1"
    }
  }
}

# This is a "Resource" - the thing we are building.
# In a real job, this would be an "aws_instance" (a server).
resource "local_file" "devops_inventory" {
  filename = "inventory.txt"
  content  = "Server Name: HealthCheck-Production\nStatus: Active\nDocker Image: health-check-app"
}
