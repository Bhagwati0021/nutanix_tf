terraform {
  required_version = ">= 1.6.0"
  backend "local" {
    path = "./terraform.tfstate"
  }
}

resource "local_file" "test_output" {
  content  = "Terraform test run successful!"
  filename = "${path.module}/test_output.txt"
}

output "file_path" {
  value = local_file.test_output.filename
}
