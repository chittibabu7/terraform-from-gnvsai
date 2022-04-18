resource "local_file" "pet" {
  filename = var.filename
  content = var.content
}

resource "random_pet" "my-pet" {
  length = var.length
  prefix = var.prefix
  separator = var.separator
}