resource "local_file" "pet" {
  filename = var.filename
  content = "My favourite pet is ${random_pet.my-pet.id}"
}

resource "random_pet" "my-pet" {
  length = var.length
  prefix = var.prefix
  separator = var.separator
}