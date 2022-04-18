resource "local_file" "pet" {
  filename = "/home/venkas/terraform/data/pets.txt"
  content = data.local_file.dog.content
}

data "local_file" "dog" {
  filename = "/home/venkas/terraform/data/dog.txt"
}