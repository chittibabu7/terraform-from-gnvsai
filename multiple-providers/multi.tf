resource "local_file" "pet" {
  filename = "/home/venkas/terraform/multiple-providers/pets.txt"
  content = "We love Pets."
}

resource "random_pet" "my-pet" {
  length = "1"
  prefix = "Mr"
  separator = "."
}