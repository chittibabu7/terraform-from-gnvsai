resource "local_file" "pet" {
  filename = "/home/venkas/terraform/lifecycle/pet.txt"
  content = "we love pets!"
  file_permission = "0700"
  lifecycle {
      create_before_destroy = true
  }
}