variable "filename" {
  default = "/home/venkas/terraform/input/pets.txt"
  type = string
  description = "the path of a file"
}

variable "content" {
  default = "I love Pets."
  type = string
  description = "the content of a file"
}

variable "prefix" {
  default = "Mr"
  type = string
  description = "the prefix of a file"
}

variable "separator" {
  default = "."
}

variable "length" {
  default = "1"
  type = number
  description = "the length of a file"
}