resource "local_file" "dog" {
  filename = "/home/venkas/terraform/lifecycle/dog.txt"
  content = "we love pets!"
  file_permission = "0700"
  lifecycle {
      prevent_destroy = true
  }
}