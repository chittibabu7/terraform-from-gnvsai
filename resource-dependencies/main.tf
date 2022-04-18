resource "local_file" "pet" {
  filename = var.filename
  content = "My favourite pet is Mr.Dog"

  depends_on = [
    random_pet.my-pet
  ]
}

resource "random_pet" "my-pet" {
  length = var.length
  prefix = var.prefix
  separator = var.separator
}