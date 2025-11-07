terraform {
  required_version = ">= 1.6.0"

  # Local backend just to keep state locally for now
  backend "local" {
    path = "./terraform.tfstate"
  }
}

# A dummy local resource — purely for testing Terraform flow
resource "local_file" "test_output" {
  content  = "Terraform test run successful!"
  filename = "${path.module}/test_output.txt"
}

output "file_path" {
  value = local_file.test_output.filename
}
